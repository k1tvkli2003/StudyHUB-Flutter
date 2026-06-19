import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/database/database_provider.dart';
import '../../data/repositories/content_repository.dart';
import '../../data/repositories/pdf_repository.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

final _pdfsProvider = StreamProvider((ref) => ref.watch(pdfRepositoryProvider).watchPdfs());
final _coursesProvider = StreamProvider((ref) => ref.watch(contentRepositoryProvider).watchReadyCourses());
final _dueCardsProvider = StreamProvider((ref) => ref.watch(appDatabaseProvider).watchDueFlashcards());

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pdfs = ref.watch(_pdfsProvider).value ?? const [];
    final courses = ref.watch(_coursesProvider).value ?? const [];
    final dueCards = ref.watch(_dueCardsProvider).value ?? const [];
    final colors = Theme.of(context).colorScheme;
    return ScreenFrame(
      children: [
        PremiumHeader(
          title: 'StudyHUB',
          subtitle: 'Your local-first AI study companion',
          trailing: Image.asset('assets/images/app_icon.png', width: 58, height: 58),
        ),
        StudyCard(
          accent: colors.primary,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final compact = constraints.maxWidth < 680;
              final cards = [
                _Metric(label: 'Documents', value: '${pdfs.length}', icon: Icons.picture_as_pdf_rounded, color: colors.primary),
                _Metric(label: 'Courses', value: '${courses.length}', icon: Icons.auto_stories_rounded, color: colors.secondary),
                _Metric(label: 'Due cards', value: '${dueCards.length}', icon: Icons.cached_rounded, color: colors.tertiary),
              ];
              return compact
                  ? Column(children: cards.map((e) => Padding(padding: const EdgeInsets.only(bottom: 10), child: e)).toList())
                  : Row(children: cards.map((e) => Expanded(child: e)).toList());
            },
          ),
        ),
        StudyCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Continue', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10),
              if (pdfs.isNotEmpty)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.menu_book_rounded),
                  title: Text(pdfs.first.title),
                  subtitle: Text('Page progress ${pdfs.first.progression}%'),
                  trailing: const Icon(Icons.arrow_forward_rounded),
                  onTap: () => context.go('/pdf/${pdfs.first.id}'),
                )
              else if (courses.isNotEmpty)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.travel_explore_rounded),
                  title: Text(courses.first.title),
                  subtitle: Text('${courses.first.lessonCount} lessons available'),
                  trailing: const Icon(Icons.arrow_forward_rounded),
                  onTap: () => context.go('/library'),
                )
              else
                Text('Import a PDF or refresh the course catalog to begin.', style: TextStyle(color: colors.onSurfaceVariant)),
            ],
          ),
        ),
        StudyCard(
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              FilledButton.icon(onPressed: () => context.go('/library'), icon: const Icon(Icons.add_rounded), label: const Text('Open library')),
              OutlinedButton.icon(onPressed: () => context.go('/planner'), icon: const Icon(Icons.event_repeat_rounded), label: const Text('Plan today')),
              OutlinedButton.icon(onPressed: () => context.go('/review'), icon: const Icon(Icons.cached_rounded), label: const Text('Review cards')),
              OutlinedButton.icon(onPressed: () => context.go('/mindmap'), icon: const Icon(Icons.account_tree_rounded), label: const Text('Mind map')),
            ],
          ),
        ),
      ],
    );
  }
}

class _Metric extends StatelessWidget {
  const _Metric({required this.label, required this.value, required this.icon, required this.color});

  final String label;
  final String value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: color.withOpacity(0.12), borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(value, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900)),
              Text(label, style: Theme.of(context).textTheme.labelMedium),
            ],
          ),
        ],
      ),
    );
  }
}
