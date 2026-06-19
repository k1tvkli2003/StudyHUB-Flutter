import 'package:flutter/material.dart';

import 'studyhub_colors.dart';

class StudyHubTheme {
  const StudyHubTheme._();

  static ThemeData light() => _theme(_lightScheme(), Brightness.light);
  static ThemeData dark() => _theme(_darkScheme(), Brightness.dark);

  static ThemeData _theme(ColorScheme scheme, Brightness brightness) {
    final textTheme = Typography.material2021(platform: TargetPlatform.android)
        .black
        .apply(
          fontFamily: 'YekanBakhsh',
          bodyColor: scheme.onSurface,
          displayColor: scheme.onBackground,
        )
        .copyWith(
          headlineLarge: const TextStyle(fontFamily: 'Feather', fontWeight: FontWeight.w900, height: 1.05),
          headlineMedium: const TextStyle(fontFamily: 'Feather', fontWeight: FontWeight.w900, height: 1.08),
          titleLarge: const TextStyle(fontFamily: 'YekanBakhsh', fontWeight: FontWeight.w800),
          bodyLarge: const TextStyle(fontFamily: 'Vazirmatn', height: 1.65),
          bodyMedium: const TextStyle(fontFamily: 'Vazirmatn', height: 1.55),
          labelMedium: const TextStyle(fontFamily: 'YekanBakhsh', fontWeight: FontWeight.w700),
        );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: scheme.background,
      fontFamily: 'YekanBakhsh',
      textTheme: textTheme,
      splashFactory: InkSparkle.splashFactory,
      cardTheme: CardThemeData(
        color: scheme.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: scheme.outlineVariant),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: scheme.surface,
        indicatorColor: scheme.primaryContainer,
        labelTextStyle: WidgetStateProperty.resolveWith(
          (_) => TextStyle(fontFamily: 'YekanBakhsh', fontWeight: FontWeight.w800, color: scheme.onSurface),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: scheme.surfaceVariant.withOpacity(0.64),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: scheme.primary, width: 1.4),
        ),
      ),
    );
  }

  static ColorScheme _lightScheme() => const ColorScheme.light(
        primary: StudyHubColors.primaryLight,
        onPrimary: Colors.white,
        primaryContainer: StudyHubColors.primaryContainerLight,
        onPrimaryContainer: StudyHubColors.onBackgroundLight,
        secondary: StudyHubColors.secondaryLight,
        onSecondary: Colors.white,
        secondaryContainer: StudyHubColors.secondaryContainerLight,
        onSecondaryContainer: StudyHubColors.onBackgroundLight,
        tertiary: StudyHubColors.tertiaryLight,
        onTertiary: Colors.white,
        tertiaryContainer: StudyHubColors.tertiaryContainerLight,
        onTertiaryContainer: StudyHubColors.onBackgroundLight,
        background: StudyHubColors.backgroundLight,
        onBackground: StudyHubColors.onBackgroundLight,
        surface: StudyHubColors.surfaceLight,
        onSurface: StudyHubColors.onBackgroundLight,
        surfaceVariant: StudyHubColors.surfaceVariantLight,
        onSurfaceVariant: StudyHubColors.hintLight,
        outline: StudyHubColors.outlineLight,
        outlineVariant: Color(0x88D2D7E0),
        error: StudyHubColors.errorLight,
      );

  static ColorScheme _darkScheme() => const ColorScheme.dark(
        primary: StudyHubColors.primaryDark,
        onPrimary: StudyHubColors.backgroundDark,
        primaryContainer: StudyHubColors.primaryContainerDark,
        onPrimaryContainer: StudyHubColors.onBackgroundDark,
        secondary: StudyHubColors.secondaryDark,
        onSecondary: StudyHubColors.backgroundDark,
        secondaryContainer: StudyHubColors.secondaryContainerDark,
        onSecondaryContainer: StudyHubColors.onBackgroundDark,
        tertiary: StudyHubColors.tertiaryDark,
        onTertiary: StudyHubColors.backgroundDark,
        tertiaryContainer: StudyHubColors.tertiaryContainerDark,
        onTertiaryContainer: StudyHubColors.onBackgroundDark,
        background: StudyHubColors.backgroundDark,
        onBackground: StudyHubColors.onBackgroundDark,
        surface: StudyHubColors.surfaceDark,
        onSurface: StudyHubColors.onBackgroundDark,
        surfaceVariant: StudyHubColors.surfaceVariantDark,
        onSurfaceVariant: StudyHubColors.hintDark,
        outline: StudyHubColors.outlineDark,
        outlineVariant: Color(0x14FFFFFF),
        error: StudyHubColors.errorDark,
      );
}
