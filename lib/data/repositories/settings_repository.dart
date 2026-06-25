import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/config/app_config.dart';

enum ThemeModeSetting { system, light, dark }

enum LayoutDensity { compact, comfortable, spacious }

class SettingsRepository {
  SettingsRepository(this._prefs, this._secure);

  static const _legacyChannel = MethodChannel('studyhub/legacy_migration');

  final SharedPreferences _prefs;
  final FlutterSecureStorage _secure;

  ThemeModeSetting get themeMode {
    final raw = _prefs.getString('theme_mode') ?? 'SYSTEM';
    return switch (raw.toUpperCase()) {
      'LIGHT' => ThemeModeSetting.light,
      'DARK' => ThemeModeSetting.dark,
      _ => ThemeModeSetting.system,
    };
  }

  bool get onboardingCompleted => _prefs.getBool('onboarding_completed') ?? false;
  bool get biometricLockEnabled => _prefs.getBool('biometric_lock_enabled') ?? false;
  bool get cloudSyncEnabled => _prefs.getBool('cloud_sync_enabled') ?? true;
  bool get debugOverlayEnabled => _prefs.getBool('debug_overlay_enabled') ?? true;
  bool get reviewReminderEnabled => _prefs.getBool('review_reminder_enabled') ?? true;
  int get reviewReminderHour => _prefs.getInt('review_reminder_hour') ?? 19;
  bool get plannerReminderEnabled => _prefs.getBool('planner_reminder_enabled') ?? true;
  bool get weeklyReportEnabled => _prefs.getBool('weekly_report_enabled') ?? true;
  int get dailyGoalMinutes => _prefs.getInt('daily_goal_minutes') ?? 30;
  int get minutesPerPage => _prefs.getInt('minutes_per_page') ?? 3;
  double get fontScale => _prefs.getDouble('font_scale') ?? 1.0;
  String get ttsVoice => _prefs.getString('tts_voice') ?? 'Kore';
  double get ttsSpeed => _prefs.getDouble('tts_speed') ?? 1.0;
  LayoutDensity get layoutDensity {
    final raw = _prefs.getString('layout_density') ?? 'COMFORTABLE';
    return switch (raw.toUpperCase()) {
      'COMPACT' => LayoutDensity.compact,
      'SPACIOUS' => LayoutDensity.spacious,
      _ => LayoutDensity.comfortable,
    };
  }
  String get aiModel => _prefs.getString('AI_MODEL') ?? AppConfig.defaultAiModel;
  String get aiBaseUrl => _prefs.getString('GEMINI_BASE_URL') ?? AppConfig.avalaiBaseUrl;
  List<String> get enrolledCourses => _prefs.getStringList('enrolled_courses') ?? const [];

  Future<String> apiKey() async => await _secure.read(key: 'AVALAI_API_KEY') ?? AppConfig.avalaiApiKey;

  Future<void> setThemeMode(ThemeModeSetting mode) => _prefs.setString('theme_mode', mode.name.toUpperCase());
  Future<void> setOnboardingCompleted(bool value) => _prefs.setBool('onboarding_completed', value);
  Future<void> setBiometricLockEnabled(bool value) => _prefs.setBool('biometric_lock_enabled', value);
  Future<void> setCloudSyncEnabled(bool value) => _prefs.setBool('cloud_sync_enabled', value);
  Future<void> setDebugOverlayEnabled(bool value) => _prefs.setBool('debug_overlay_enabled', value);
  Future<void> setReviewReminderEnabled(bool value) => _prefs.setBool('review_reminder_enabled', value);
  Future<void> setReviewReminderHour(int value) => _prefs.setInt('review_reminder_hour', value.clamp(0, 23));
  Future<void> setPlannerReminderEnabled(bool value) => _prefs.setBool('planner_reminder_enabled', value);
  Future<void> setWeeklyReportEnabled(bool value) => _prefs.setBool('weekly_report_enabled', value);
  Future<void> setDailyGoalMinutes(int value) => _prefs.setInt('daily_goal_minutes', value.clamp(5, 480));
  Future<void> setMinutesPerPage(int value) => _prefs.setInt('minutes_per_page', value.clamp(1, 30));
  Future<void> setFontScale(double value) => _prefs.setDouble('font_scale', value.clamp(0.85, 1.5));
  Future<void> setTtsVoice(String value) => _prefs.setString('tts_voice', value);
  Future<void> setTtsSpeed(double value) => _prefs.setDouble('tts_speed', value.clamp(0.5, 2.0));
  Future<void> setLayoutDensity(LayoutDensity value) => _prefs.setString('layout_density', value.name.toUpperCase());
  Future<void> setAiBaseUrl(String value) => _prefs.setString('GEMINI_BASE_URL', value);
  Future<void> setAiModel(String value) => _prefs.setString('AI_MODEL', value);
  Future<void> setApiKey(String value) => _secure.write(key: 'AVALAI_API_KEY', value: value);

  Future<void> enrollCourse(String courseId) async {
    final next = {...enrolledCourses, courseId}.toList()..sort();
    await _prefs.setStringList('enrolled_courses', next);
  }

  Future<void> migrateAndroidLegacyPreferencesOnce() async {
    if (_prefs.getBool('legacy_android_preferences_migrated') == true) return;
    final result = await _legacyChannel.invokeMapMethod<String, Object?>('readLegacyPreferences').catchError((_) => null);
    if (result == null) {
      await _prefs.setBool('legacy_android_preferences_migrated', true);
      return;
    }
    for (final entry in result.entries) {
      final value = entry.value;
      switch (value) {
        case bool v:
          await _prefs.setBool(entry.key, v);
        case int v:
          await _prefs.setInt(entry.key, v);
        case double v:
          await _prefs.setDouble(entry.key, v);
        case String v:
          await _prefs.setString(entry.key, v);
        case List v:
          await _prefs.setStringList(entry.key, v.map((item) => item.toString()).toList());
      }
    }
    await _prefs.setBool('legacy_android_preferences_migrated', true);
  }
}
