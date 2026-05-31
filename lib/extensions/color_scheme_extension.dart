import 'package:flutter/material.dart';

extension ColorSchemeExtension on BuildContext {
  ColorScheme get _colors => Theme.of(this).colorScheme;

  Color get primary => _colors.primary;
  Color get onPrimary => _colors.onPrimary;
  Color get primaryContainer => _colors.primaryContainer;
  Color get onPrimaryContainer => _colors.onPrimaryContainer;
  Color get primaryFixed => _colors.primaryFixed;
  Color get primaryFixedDim => _colors.primaryFixedDim;
  Color get onPrimaryFixed => _colors.onPrimaryFixed;
  Color get onPrimaryFixedVariant => _colors.onPrimaryFixedVariant;

  Color get secondary => _colors.secondary;
  Color get onSecondary => _colors.onSecondary;
  Color get secondaryContainer => _colors.secondaryContainer;
  Color get onSecondaryContainer => _colors.onSecondaryContainer;
  Color get secondaryFixed => _colors.secondaryFixed;
  Color get secondaryFixedDim => _colors.secondaryFixedDim;
  Color get onSecondaryFixed => _colors.onSecondaryFixed;
  Color get onSecondaryFixedVariant => _colors.onSecondaryFixedVariant;

  Color get tertiary => _colors.tertiary;
  Color get onTertiary => _colors.onTertiary;
  Color get tertiaryContainer => _colors.tertiaryContainer;
  Color get onTertiaryContainer => _colors.onTertiaryContainer;
  Color get tertiaryFixed => _colors.tertiaryFixed;
  Color get tertiaryFixedDim => _colors.tertiaryFixedDim;
  Color get onTertiaryFixed => _colors.onTertiaryFixed;
  Color get onTertiaryFixedVariant => _colors.onTertiaryFixedVariant;

  Color get error => _colors.error;
  Color get onError => _colors.onError;
  Color get errorContainer => _colors.errorContainer;
  Color get onErrorContainer => _colors.onErrorContainer;

  Color get outline => _colors.outline;
  Color get outlineVariant => _colors.outlineVariant;

  Color get surface => _colors.surface;
  Color get surfaceDim => _colors.surfaceDim;
  Color get surfaceBright => _colors.surfaceBright;
  Color get surfaceContainerLowest => _colors.surfaceContainerLowest;
  Color get surfaceContainerLow => _colors.surfaceContainerLow;
  Color get surfaceContainer => _colors.surfaceContainer;
  Color get surfaceContainerHigh => _colors.surfaceContainerHigh;
  Color get surfaceContainerHighest => _colors.surfaceContainerHighest;
  Color get onSurface => _colors.onSurface;
  Color get onSurfaceVariant => _colors.onSurfaceVariant;

  Color get inverseSurface => _colors.inverseSurface;
  Color get onInverseSurface => _colors.onInverseSurface;
  Color get inversePrimary => _colors.inversePrimary;

  Color get shadow => _colors.shadow;
  Color get scrim => _colors.scrim;
  Color get surfaceTint => _colors.surfaceTint;
}
