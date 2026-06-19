import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repositories/providers.dart';
import '../data/repositories/settings_repository.dart';
import '../design_system/studyhub_theme.dart';
import '../sync/sync_manager.dart';
import 'studyhub_router.dart';

class StudyHubApp extends ConsumerWidget {
  const StudyHubApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(startupSyncProvider);
    final settings = ref.watch(settingsRepositoryProvider);
    final mode = settings.value?.themeMode ?? ThemeModeSetting.system;
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'StudyHUB',
      theme: StudyHubTheme.light(),
      darkTheme: StudyHubTheme.dark(),
      themeMode: switch (mode) {
        ThemeModeSetting.light => ThemeMode.light,
        ThemeModeSetting.dark => ThemeMode.dark,
        ThemeModeSetting.system => ThemeMode.system,
      },
      routerConfig: ref.watch(studyHubRouterProvider),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
