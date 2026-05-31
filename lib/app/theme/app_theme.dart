import 'package:balanceo/app/theme/app_color_scheme.dart';
import 'package:balanceo/app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    typography: Typography.material2021(),
    textTheme: AppTextTheme.light,
    colorScheme: AppColorScheme.light,
  );

  static final dark = ThemeData(
    useMaterial3: true,
    typography: Typography.material2021(),
    textTheme: AppTextTheme.light,
    colorScheme: AppColorScheme.light,
  );
}
