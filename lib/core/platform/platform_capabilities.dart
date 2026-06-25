import 'package:flutter/foundation.dart';

class PlatformCapabilities {
  const PlatformCapabilities({
    required this.homeWidgets,
    required this.cameraOcr,
    required this.biometric,
    required this.systemNotifications,
    required this.backgroundPomodoro,
    required this.desktopCompanion,
  });

  factory PlatformCapabilities.current() {
    if (kIsWeb) {
      return const PlatformCapabilities(
        homeWidgets: false,
        cameraOcr: false,
        biometric: false,
        systemNotifications: false,
        backgroundPomodoro: false,
        desktopCompanion: false,
      );
    }
    final android = defaultTargetPlatform == TargetPlatform.android;
    final ios = defaultTargetPlatform == TargetPlatform.iOS;
    final macos = defaultTargetPlatform == TargetPlatform.macOS;
    final windows = defaultTargetPlatform == TargetPlatform.windows;
    final linux = defaultTargetPlatform == TargetPlatform.linux;
    return PlatformCapabilities(
      homeWidgets: android || ios,
      cameraOcr: android || ios,
      biometric: android || ios || macos || windows,
      systemNotifications: android || ios || macos || windows || linux,
      backgroundPomodoro: android || ios || macos,
      desktopCompanion: windows || linux || macos,
    );
  }

  final bool homeWidgets;
  final bool cameraOcr;
  final bool biometric;
  final bool systemNotifications;
  final bool backgroundPomodoro;
  final bool desktopCompanion;
}
