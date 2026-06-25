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
                    SegmentedButton<LayoutDensity>(
                      segments: const [
                        ButtonSegment(value: LayoutDensity.compact, label: Text('Compact')),
                        ButtonSegment(value: LayoutDensity.comfortable, label: Text('Comfort')),
                        ButtonSegment(value: LayoutDensity.spacious, label: Text('Spacious')),
                      ],
                      selected: {repo.layoutDensity},
                      onSelectionChanged: (value) async {
                        await repo.setLayoutDensity(value.first);
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                    const SizedBox(height: 12),
                    _SettingSlider(
                      label: 'Font scale',
                      valueLabel: '${(repo.fontScale * 100).round()}%',
                      value: repo.fontScale,
                      min: 0.85,
                      max: 1.5,
                      divisions: 13,
                      onChanged: (value) async {
                        await repo.setFontScale(value);
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
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
                    Text('Goals', style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    _SettingSlider(
                      label: 'Daily goal',
                      valueLabel: '${repo.dailyGoalMinutes} min',
                      value: repo.dailyGoalMinutes.toDouble(),
                      min: 5,
                      max: 180,
                      divisions: 35,
                      onChanged: (value) async {
                        await repo.setDailyGoalMinutes(value.round());
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                    _SettingSlider(
                      label: 'Minutes per page',
                      valueLabel: '${repo.minutesPerPage} min',
                      value: repo.minutesPerPage.toDouble(),
                      min: 1,
                      max: 30,
                      divisions: 29,
                      onChanged: (value) async {
                        await repo.setMinutesPerPage(value.round());
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
                    Text('Reminders', style: Theme.of(context).textTheme.titleLarge),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Review reminder'),
                      subtitle: Text('At ${repo.reviewReminderHour.toString().padLeft(2, '0')}:00'),
                      value: repo.reviewReminderEnabled,
                      onChanged: (value) async {
                        await repo.setReviewReminderEnabled(value);
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                    _SettingSlider(
                      label: 'Review hour',
                      valueLabel: '${repo.reviewReminderHour.toString().padLeft(2, '0')}:00',
                      value: repo.reviewReminderHour.toDouble(),
                      min: 0,
                      max: 23,
                      divisions: 23,
                      onChanged: (value) async {
                        await repo.setReviewReminderHour(value.round());
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Planner reminder'),
                      value: repo.plannerReminderEnabled,
                      onChanged: (value) async {
                        await repo.setPlannerReminderEnabled(value);
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Weekly report'),
                      value: repo.weeklyReportEnabled,
                      onChanged: (value) async {
                        await repo.setWeeklyReportEnabled(value);
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
                    Text('Reader voice', style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text('Voice: ${repo.ttsVoice}'),
                    _SettingSlider(
                      label: 'TTS speed',
                      valueLabel: '${repo.ttsSpeed.toStringAsFixed(2)}x',
                      value: repo.ttsSpeed,
                      min: 0.5,
                      max: 2,
                      divisions: 15,
                      onChanged: (value) async {
                        await repo.setTtsSpeed(value);
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Cloud sync'),
                      value: repo.cloudSyncEnabled,
                      onChanged: (value) async {
                        await repo.setCloudSyncEnabled(value);
                        ref.invalidate(settingsRepositoryProvider);
                      },
                    ),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text('Biometric lock'),
                      value: repo.biometricLockEnabled,
                      onChanged: caps.biometric
                          ? (value) async {
                              await repo.setBiometricLockEnabled(value);
                              ref.invalidate(settingsRepositoryProvider);
                            }
                          : null,
                    ),
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

class _SettingSlider extends StatelessWidget {
  const _SettingSlider({
    required this.label,
    required this.valueLabel,
    required this.value,
    required this.min,
    required this.max,
    required this.divisions,
    required this.onChanged,
  });

  final String label;
  final String valueLabel;
  final double value;
  final double min;
  final double max;
  final int divisions;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Text(label, style: Theme.of(context).textTheme.labelLarge)),
            Text(valueLabel, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        Slider(value: value.clamp(min, max), min: min, max: max, divisions: divisions, onChanged: onChanged),
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
