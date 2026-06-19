import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/database/database_provider.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

final _achievementsProvider = StreamProvider((ref) => ref.watch(appDatabaseProvider).select(ref.watch(appDatabaseProvider).achievements).watch());

class AchievementsScreen extends ConsumerWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final achievements = ref.watch(_achievementsProvider).value ?? const [];
    return ScreenFrame(
      children: [
        const PremiumHeader(title: 'Achievements', subtitle: 'Milestones synced from local study activity'),
        if (achievements.isEmpty)
          const StudyCard(child: Text('Achievements will unlock as you read, review, plan, and complete Pomodoro sessions.'))
        else
          ...achievements.map(
            (item) => StudyCard(
              accent: item.unlockedAt == null ? null : Theme.of(context).colorScheme.secondary,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(item.unlockedAt == null ? Icons.lock_rounded : Icons.emoji_events_rounded),
                title: Text(item.title),
                subtitle: Text(item.description),
              ),
            ),
          ),
      ],
    );
  }
}
