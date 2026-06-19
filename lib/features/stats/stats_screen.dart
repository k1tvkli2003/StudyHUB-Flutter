import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/database/database_provider.dart';
import '../../data/models/study_models.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

final _activityProvider = StreamProvider((ref) => ref.watch(appDatabaseProvider).select(ref.watch(appDatabaseProvider).studyActivity).watch());

class StatsScreen extends ConsumerWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activity = ref.watch(_activityProvider).value ?? const [];
    final minutes = activity.fold<int>(0, (sum, item) => sum + item.minutesStudied);
    final pages = activity.fold<int>(0, (sum, item) => sum + item.pagesRead);
    final cards = activity.fold<int>(0, (sum, item) => sum + item.cardsReviewed);
    final xp = minutes + pages * XpSystem.pageRead + cards * XpSystem.cardReviewed;
    return ScreenFrame(
      children: [
        const PremiumHeader(title: 'Study Stats', subtitle: 'Minutes, pages, cards, level curve, and retention signals'),
        StudyCard(
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              _Stat(label: 'Minutes', value: '$minutes', icon: Icons.timer_rounded),
              _Stat(label: 'Pages', value: '$pages', icon: Icons.menu_book_rounded),
              _Stat(label: 'Cards', value: '$cards', icon: Icons.cached_rounded),
              _Stat(label: 'Level', value: '${XpSystem.levelFor(xp)}', icon: Icons.auto_awesome_rounded),
            ],
          ),
        ),
        StudyCard(
          child: LinearProgressIndicator(value: XpSystem.progressInLevel(xp)),
        ),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value, required this.icon});

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: 160,
      child: StudyCard(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: colors.primary),
            const SizedBox(height: 8),
            Text(value, style: Theme.of(context).textTheme.headlineSmall),
            Text(label),
          ],
        ),
      ),
    );
  }
}
