import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/platform/platform_capabilities.dart';
import '../../data/repositories/providers.dart';
import '../../data/repositories/settings_repository.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsRepositoryProvider);
    final caps = PlatformCapabilities.current();
    return ScreenFrame(
      children: [
        const PremiumHeader(title: 'Settings', subtitle: 'Theme, sync, engine, privacy, platform capabilities'),
        settings.when(
          data: (repo) => Column(
            children: [
              StudyCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Appearance', style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    SegmentedButton<ThemeModeSetting>(
                      segments: const [
                        ButtonSegment(value: ThemeModeSetting.system, label: Text('System')),
                        ButtonSegment(value: ThemeModeSetting.light, label: Text('Light')),
                        ButtonSegment(value: ThemeModeSetting.dark, label: Text('Dark')),
                      ],
                      selected: {repo.themeMode},
                      onSelectionChanged: (value) async {
                        await repo.setThemeMode(value.first);
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                    const SizedBox(height: 12),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Debug overlay'),
                      value: repo.debugOverlayEnabled,
                      onChanged: (value) async {
                        await repo.setDebugOverlayEnabled(value);
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              StudyCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('AI engine', style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    Text('Endpoint: ${repo.aiBaseUrl}'),
                    Text('Model: ${repo.aiModel}'),
                    const SizedBox(height: 8),
                    const Text('API key is stored in secure storage or supplied through --dart-define.'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              StudyCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Platform', style: Theme.of(context).textTheme.titleLarge),
                    _Cap(label: 'Home widgets', enabled: caps.homeWidgets),
                    _Cap(label: 'Camera OCR', enabled: caps.cameraOcr),
                    _Cap(label: 'Biometric lock', enabled: caps.biometric),
                    _Cap(label: 'Notifications', enabled: caps.systemNotifications),
                    _Cap(label: 'Background Pomodoro', enabled: caps.backgroundPomodoro),
                    _Cap(label: 'Desktop companion', enabled: caps.desktopCompanion),
                  ],
                ),
              ),
            ],
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stack) => Text('Settings failed: $error'),
        ),
      ],
    );
  }
}

class _Cap extends StatelessWidget {
  const _Cap({required this.label, required this.enabled});

  final String label;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(enabled ? Icons.check_circle_rounded : Icons.remove_circle_outline_rounded),
      title: Text(label),
      subtitle: Text(enabled ? 'Native equivalent enabled' : 'Graceful fallback'),
    );
  }
}
