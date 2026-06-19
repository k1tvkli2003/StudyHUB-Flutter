import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:drift/drift.dart' as drift;

import '../../data/database/database_provider.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

final _plansProvider = StreamProvider((ref) {
  final db = ref.watch(appDatabaseProvider);
  return (db.select(db.studyPlans)..orderBy([(p) => drift.OrderingTerm.asc(p.day)])).watch();
});

class PlannerScreen extends ConsumerWidget {
  const PlannerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plans = ref.watch(_plansProvider).value ?? const [];
    return ScreenFrame(
      children: [
        const PremiumHeader(title: 'Planner', subtitle: 'Smart PDF and lesson pacing with deadline-aware review buffers'),
        StudyCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Global plan duration', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: TextField(decoration: const InputDecoration(labelText: 'Days', prefixIcon: Icon(Icons.calendar_month_rounded)))),
                  const SizedBox(width: 10),
                  FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.auto_awesome_rounded), label: const Text('Generate roadmap')),
                ],
              ),
            ],
          ),
        ),
        if (plans.isEmpty)
          const StudyCard(child: Text('No active plan yet. Generate a roadmap after importing PDFs or opening course lessons.'))
        else
          ...plans.map(
            (plan) => StudyCard(
              accent: plan.completed ? Theme.of(context).colorScheme.tertiary : Theme.of(context).colorScheme.primary,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(child: Text('${plan.day}')),
                title: Text(plan.topic),
                subtitle: Text('${plan.pdfTitle} · ${plan.timeframeMinutes} min · pages ${plan.startPage ?? '-'}-${plan.endPage ?? '-'}'),
                trailing: Icon(plan.completed ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded),
              ),
            ),
          ),
      ],
    );
  }
}
