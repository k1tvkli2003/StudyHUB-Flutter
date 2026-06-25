import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/achievements/achievements_screen.dart';
import '../features/dashboard/dashboard_screen.dart';
import '../features/explore/lesson_reader_screen.dart';
import '../features/library/library_screen.dart';
import '../features/mindmap/mindmap_screen.dart';
import '../features/onboarding/onboarding_screen.dart';
import '../features/pdf_reader/pdf_reader_screen.dart';
import '../features/planner/planner_screen.dart';
import '../features/pomodoro/pomodoro_screen.dart';
import '../features/review/review_screen.dart';
import '../features/settings/settings_screen.dart';
import '../features/shell/studyhub_shell.dart';
import '../features/stats/stats_screen.dart';

final studyHubRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/dashboard',
    routes: [
      ShellRoute(
        builder: (context, state, child) => StudyHubShell(child: child),
        routes: [
          GoRoute(
            path: '/dashboard',
            pageBuilder: _fade(const DashboardScreen()),
          ),
          GoRoute(path: '/library', pageBuilder: _fade(const LibraryScreen())),
          GoRoute(path: '/planner', pageBuilder: _fade(const PlannerScreen())),
          GoRoute(path: '/review', pageBuilder: _fade(const ReviewScreen())),
          GoRoute(
            path: '/settings',
            pageBuilder: _fade(const SettingsScreen()),
          ),
          GoRoute(path: '/stats', pageBuilder: _fade(const StatsScreen())),
          GoRoute(
            path: '/achievements',
            pageBuilder: _fade(const AchievementsScreen()),
          ),
          GoRoute(path: '/mindmap', pageBuilder: _fade(const MindMapScreen())),
          GoRoute(
            path: '/pomodoro',
            pageBuilder: _fade(const PomodoroScreen()),
          ),
        ],
      ),
      GoRoute(
        path: '/onboarding',
        pageBuilder: _fade(const OnboardingScreen()),
      ),
      GoRoute(
        path: '/lesson/:chapterId',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          child: LessonReaderScreen(
            chapterId: state.pathParameters['chapterId'] ?? '',
            courseId: state.uri.queryParameters['courseId'] ?? '',
            mode: state.uri.queryParameters['mode'] ?? 'FIND',
          ),
          transitionsBuilder: _transition,
        ),
      ),
      GoRoute(
        path: '/pdf/:id',
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          child: PdfReaderScreen(
            pdfId: int.tryParse(state.pathParameters['id'] ?? '') ?? -1,
          ),
          transitionsBuilder: _transition,
        ),
      ),
    ],
  );
});

Page<void> Function(BuildContext, GoRouterState) _fade(Widget child) {
  return (context, state) =>
      CustomTransitionPage<void>(child: child, transitionsBuilder: _transition);
}

Widget _transition(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondary,
  Widget child,
) {
  final curved = CurvedAnimation(parent: animation, curve: Curves.easeOutCubic);
  return FadeTransition(
    opacity: curved,
    child: SlideTransition(
      position: Tween(
        begin: const Offset(0.03, 0),
        end: Offset.zero,
      ).animate(curved),
      child: child,
    ),
  );
}
