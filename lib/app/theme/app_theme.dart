import 'package:balanceo/app/theme/app_color_scheme.dart';
import 'package:balanceo/app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    typography: Typography.material2021(),
    textTheme: AppTextTheme.light,
    colorScheme: AppColorScheme.light,
    splashFactory: NoSplash.splashFactory,
    navigationBarTheme: NavigationBarThemeData(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      indicatorColor: Colors.transparent,
      backgroundColor: AppColorScheme.light.surfaceContainerLowest,
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
        (states) => IconThemeData(
          color: states.contains(WidgetState.selected)
              ? AppColorScheme.light.onSurface
              : AppColorScheme.light.outlineVariant,
        ),
      ),
    ),
  );

  static final dark = ThemeData(
    useMaterial3: true,
    typography: Typography.material2021(),
    textTheme: AppTextTheme.dark,
    colorScheme: AppColorScheme.dark,
    navigationBarTheme: NavigationBarThemeData(
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      indicatorColor: Colors.transparent,
      backgroundColor: AppColorScheme.dark.surfaceContainerLowest,
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
        (states) => IconThemeData(
          color: states.contains(WidgetState.selected)
              ? AppColorScheme.dark.onSurface
              : AppColorScheme.dark.outlineVariant,
        ),
      ),
    ),
  );
}
