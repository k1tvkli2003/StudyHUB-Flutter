import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/providers.dart';
import '../../data/repositories/settings_repository.dart';

final studyHubNotificationsProvider = Provider<StudyHubNotifications>(
  (ref) => StudyHubNotifications.instance,
);

final notificationStartupProvider = FutureProvider<void>((ref) async {
  final settings = await ref.watch(settingsRepositoryProvider.future);
  await ref.watch(studyHubNotificationsProvider).syncReminders(settings);
});

class StudyHubNotifications {
  StudyHubNotifications._();

  static final instance = StudyHubNotifications._();

  static const _reviewReminderId = 101;
  static const _plannerReminderId = 102;
  static const _weeklyReportId = 103;

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();
  var _initialized = false;

  Future<void> syncReminders(SettingsRepository settings) async {
    await initialize();
    await _cancelReminderSet();

    final needsPermission =
        settings.reviewReminderEnabled ||
        settings.plannerReminderEnabled ||
        settings.weeklyReportEnabled;
    if (!needsPermission) return;
    await requestPermissions();

    if (settings.reviewReminderEnabled) {
      await _showDailyReminder(
        id: _reviewReminderId,
        title: 'StudyHUB Review',
        body: 'Your spaced repetition queue is ready.',
        payload: 'studyhub://review',
      );
    }
    if (settings.plannerReminderEnabled) {
      await _showDailyReminder(
        id: _plannerReminderId,
        title: 'StudyHUB Planner',
        body: 'Check today\'s reading plan and keep the streak alive.',
        payload: 'studyhub://planner',
      );
    }
    if (settings.weeklyReportEnabled) {
      await _showWeeklyReminder();
    }
  }

  Future<void> initialize() async {
    if (_initialized) return;
    const settings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
      ),
      macOS: DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
      ),
      linux: LinuxInitializationSettings(defaultActionName: 'Open StudyHUB'),
      windows: WindowsInitializationSettings(
        appName: 'StudyHUB',
        appUserModelId: 'com.studyhub.app',
        guid: '8f7164dc-128e-4f4f-8d0a-922ab8fa3f16',
      ),
    );
    await _plugin.initialize(settings: settings);
    _initialized = true;
  }

  Future<void> requestPermissions() async {
    await _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.requestNotificationsPermission()
        .catchError((_) => null);
    await _plugin
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >()
        ?.requestPermissions(alert: true, badge: true, sound: true)
        .catchError((_) => null);
    await _plugin
        .resolvePlatformSpecificImplementation<
          MacOSFlutterLocalNotificationsPlugin
        >()
        ?.requestPermissions(alert: true, badge: true, sound: true)
        .catchError((_) => null);
  }

  Future<void> _cancelReminderSet() async {
    await _plugin.cancel(id: _reviewReminderId);
    await _plugin.cancel(id: _plannerReminderId);
    await _plugin.cancel(id: _weeklyReportId);
  }

  Future<void> _showDailyReminder({
    required int id,
    required String title,
    required String body,
    required String payload,
  }) {
    return _plugin.periodicallyShow(
      id: id,
      title: title,
      body: body,
      repeatInterval: RepeatInterval.daily,
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      notificationDetails: _details(),
      payload: payload,
    );
  }

  Future<void> _showWeeklyReminder() {
    return _plugin.periodicallyShow(
      id: _weeklyReportId,
      title: 'StudyHUB Weekly Report',
      body: 'Review your reading, planning, and recall progress.',
      repeatInterval: RepeatInterval.weekly,
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      notificationDetails: _details(),
      payload: 'studyhub://stats',
    );
  }

  NotificationDetails _details() {
    const android = AndroidNotificationDetails(
      'studyhub_reminders',
      'StudyHUB reminders',
      channelDescription: 'Review, planner, and weekly progress reminders.',
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
    );
    const darwin = DarwinNotificationDetails(
      threadIdentifier: 'studyhub_reminders',
    );
    const linux = LinuxNotificationDetails(defaultActionName: 'Open StudyHUB');
    const windows = WindowsNotificationDetails();
    return const NotificationDetails(
      android: android,
      iOS: darwin,
      macOS: darwin,
      linux: linux,
      windows: windows,
    );
  }
}
