import 'dart:io' show Platform;

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
    final android = Platform.isAndroid;
    final ios = Platform.isIOS;
    final macos = Platform.isMacOS;
    final windows = Platform.isWindows;
    final linux = Platform.isLinux;
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
