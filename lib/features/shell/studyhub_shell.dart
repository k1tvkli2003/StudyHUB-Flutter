import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../design_system/studyhub_components.dart';

enum StudyHubDestination {
  dashboard('/dashboard', 'Home', 'خانه', Icons.grid_view_rounded),
  library('/library', 'Library', 'کتابخانه', Icons.menu_book_rounded),
  planner('/planner', 'Planner', 'برنامه', Icons.event_repeat_rounded),
  review('/review', 'Review', 'مرور', Icons.cached_rounded),
  settings('/settings', 'Settings', 'تنظیمات', Icons.settings_rounded),
  stats('/stats', 'Study Stats', 'آمار', Icons.query_stats_rounded),
  achievements(
    '/achievements',
    'Achievements',
    'نشان‌ها',
    Icons.emoji_events_rounded,
  ),
  mindmap('/mindmap', 'Mind Map', 'نقشه ذهنی', Icons.account_tree_rounded),
  pomodoro('/pomodoro', 'Pomodoro', 'تمرکز', Icons.hourglass_bottom_rounded);

  const StudyHubDestination(this.path, this.label, this.shortLabel, this.icon);

  final String path;
  final String label;
  final String shortLabel;
  final IconData icon;

  static const primary = [dashboard, library, planner, review];
  static const secondary = [settings, stats, achievements, mindmap, pomodoro];
}

class StudyHubShell extends StatelessWidget {
  const StudyHubShell({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final rail = width >= 900;
    final location = GoRouterState.of(context).uri.path;
    return Scaffold(
      body: CosmicBackground(
        child: SafeArea(
          child: Row(
            children: [
              if (rail) _SideRail(location: location),
              Expanded(child: child),
            ],
          ),
        ),
      ),
      bottomNavigationBar: rail ? null : _BottomBar(location: location),
    );
  }
}

class _SideRail extends StatelessWidget {
  const _SideRail({required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: 252,
      margin: const EdgeInsets.all(14),
      child: GlassPanel(
        padding: const EdgeInsets.fromLTRB(18, 20, 18, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/app_icon.png',
                  width: 42,
                  height: 42,
                ),
                const SizedBox(width: 10),
                Image.asset('assets/images/namelogo.png', height: 24),
              ],
            ),
            const SizedBox(height: 30),
            ...StudyHubDestination.primary.map(
              (d) => _RailItem(destination: d, location: location),
            ),
            const SizedBox(height: 18),
            Text(
              'More',
              style: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(color: colors.onSurfaceVariant),
            ),
            const SizedBox(height: 8),
            ...StudyHubDestination.secondary.map(
              (d) => _RailItem(destination: d, location: location),
            ),
            const Spacer(),
            StudyCard(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gemini Flash Lite',
                    style: Theme.of(
                      context,
                    ).textTheme.labelMedium?.copyWith(color: colors.primary),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'local-first library',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RailItem extends StatelessWidget {
  const _RailItem({required this.destination, required this.location});

  final StudyHubDestination destination;
  final String location;

  @override
  Widget build(BuildContext context) {
    final selected = location.startsWith(destination.path);
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () => context.go(destination.path),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            color: selected ? colors.primaryContainer : Colors.transparent,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Icon(
                destination.icon,
                color: selected ? colors.primary : colors.onSurfaceVariant,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  destination.label,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: selected ? colors.primary : colors.onSurfaceVariant,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({required this.location});

  final String location;

  @override
  Widget build(BuildContext context) {
    final destinations = [
      ...StudyHubDestination.primary,
      StudyHubDestination.settings,
    ];
    final index = destinations
        .indexWhere((d) => location.startsWith(d.path))
        .clamp(0, destinations.length - 1);
    return NavigationBar(
      selectedIndex: index,
      onDestinationSelected: (i) => context.go(destinations[i].path),
      destinations: [
        for (final d in destinations)
          NavigationDestination(
            icon: Icon(d.icon),
            selectedIcon: Icon(d.icon),
            label: d.shortLabel,
          ),
      ],
    );
  }
}
