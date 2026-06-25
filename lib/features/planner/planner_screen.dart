import 'dart:math' as math;

import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/database/app_database.dart';
import '../../data/database/database_provider.dart';
import '../../data/repositories/providers.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

final _plansProvider = StreamProvider((ref) {
  final db = ref.watch(appDatabaseProvider);
  return (db.select(
    db.studyPlans,
  )..orderBy([(p) => drift.OrderingTerm.asc(p.day)])).watch();
});

class PlannerScreen extends ConsumerStatefulWidget {
  const PlannerScreen({super.key});

  @override
  ConsumerState<PlannerScreen> createState() => _PlannerScreenState();
}

class _PlannerScreenState extends ConsumerState<PlannerScreen> {
  final _daysController = TextEditingController(text: '14');
  bool _isGenerating = false;

  @override
  void dispose() {
    _daysController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final plans = ref.watch(_plansProvider).value ?? const [];
    final completed = plans.where((plan) => plan.completed).length;
    return ScreenFrame(
      children: [
        PremiumHeader(
          title: 'Planner',
          subtitle: plans.isEmpty
              ? 'Smart PDF pacing with deadline-aware review buffers'
              : '$completed/${plans.length} sessions completed',
        ),
        StudyCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Global plan duration',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _daysController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Days',
                        prefixIcon: Icon(Icons.calendar_month_rounded),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  FilledButton.icon(
                    onPressed: _isGenerating ? null : _generateRoadmap,
                    icon: _isGenerating
                        ? const SizedBox.square(
                            dimension: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.auto_awesome_rounded),
                    label: const Text('Generate roadmap'),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (plans.isEmpty)
          const StudyCard(
            child: Text(
              'No active plan yet. Generate a roadmap after importing PDFs or opening course lessons.',
            ),
          )
        else
          ...plans.map(
            (plan) => StudyCard(
              accent: plan.completed
                  ? Theme.of(context).colorScheme.tertiary
                  : Theme.of(context).colorScheme.primary,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                onTap: () => _togglePlan(plan),
                leading: CircleAvatar(child: Text('${plan.day}')),
                title: Text(plan.topic),
                subtitle: Text(
                  '${plan.pdfTitle} · ${plan.timeframeMinutes} min · pages ${plan.startPage ?? '-'}-${plan.endPage ?? '-'}',
                ),
                trailing: Icon(
                  plan.completed
                      ? Icons.check_circle_rounded
                      : Icons.radio_button_unchecked_rounded,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Future<void> _generateRoadmap() async {
    setState(() => _isGenerating = true);
    try {
      final db = ref.read(appDatabaseProvider);
      final settings = await ref.read(settingsRepositoryProvider.future);
      final pdfs = await db.listPdfs();
      if (pdfs.isEmpty) {
        _showSnack('Import at least one PDF before generating a roadmap.');
        return;
      }

      final minutesPerPage = settings.minutesPerPage.clamp(1, 30);
      final dailyGoalMinutes = settings.dailyGoalMinutes.clamp(5, 480);
      final totalPages = pdfs.fold<int>(
        0,
        (sum, pdf) => sum + _estimatedPageCount(pdf),
      );
      final requestedDays = int.tryParse(_daysController.text.trim());
      final targetDays = (requestedDays == null || requestedDays <= 0)
          ? math.max(1, (totalPages * minutesPerPage / dailyGoalMinutes).ceil())
          : requestedDays.clamp(1, 365);
      final pagesPerSession = math.max(1, (totalPages / targetDays).ceil());
      final plans = <StudyPlansCompanion>[];
      var day = 1;

      for (final pdf in pdfs) {
        final pageCount = _estimatedPageCount(pdf);
        var startPage = 1;
        while (startPage <= pageCount) {
          final endPage = math.min(pageCount, startPage + pagesPerSession - 1);
          final pageSpan = endPage - startPage + 1;
          plans.add(
            StudyPlansCompanion.insert(
              day: day++,
              pdfId: pdf.id,
              pdfTitle: pdf.title,
              topic: 'Read ${pdf.title}',
              timeframeMinutes: math.max(5, pageSpan * minutesPerPage),
              startPage: drift.Value(startPage),
              endPage: drift.Value(endPage),
              source: const drift.Value('LOCAL'),
              sourceType: const drift.Value('PDF'),
            ),
          );
          startPage = endPage + 1;
        }
      }

      await db.transaction(() async {
        await db.delete(db.studyPlans).go();
        for (final plan in plans) {
          await db.into(db.studyPlans).insert(plan);
        }
      });
      _showSnack('Generated ${plans.length} study sessions.');
    } finally {
      if (mounted) setState(() => _isGenerating = false);
    }
  }

  Future<void> _togglePlan(StudyPlan plan) async {
    final nextCompleted = !plan.completed;
    final db = ref.read(appDatabaseProvider);
    await (db.update(db.studyPlans)..where((row) => row.id.equals(plan.id)))
        .write(StudyPlansCompanion(completed: drift.Value(nextCompleted)));
    if (nextCompleted) {
      await db.recordStudyActivity(minutesStudied: plan.timeframeMinutes);
    }
  }

  int _estimatedPageCount(Pdf pdf) {
    final count = pdf.pageCount ?? pdf.progression;
    return count <= 0 ? 1 : count;
  }

  void _showSnack(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
