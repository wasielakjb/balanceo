import 'package:flutter/material.dart';

extension TextThemeExtension on BuildContext {
  TextTheme get _text => Theme.of(this).textTheme;

  TextStyle get displayLarge => _text.displayLarge!;
  TextStyle get displayMedium => _text.displayMedium!;
  TextStyle get displaySmall => _text.displaySmall!;

  TextStyle get headlineLarge => _text.headlineLarge!;
  TextStyle get headlineMedium => _text.headlineMedium!;
  TextStyle get headlineSmall => _text.headlineSmall!;

  TextStyle get titleLarge => _text.titleLarge!;
  TextStyle get titleMedium => _text.titleMedium!;
  TextStyle get titleSmall => _text.titleSmall!;

  TextStyle get bodyLarge => _text.bodyLarge!;
  TextStyle get bodyMedium => _text.bodyMedium!;
  TextStyle get bodySmall => _text.bodySmall!;

  TextStyle get labelLarge => _text.labelLarge!;
  TextStyle get labelMedium => _text.labelMedium!;
  TextStyle get labelSmall => _text.labelSmall!;

  TextStyle get bodyLargeBold => bodyLarge.copyWith(fontWeight: FontWeight.w600);
  TextStyle get bodyMediumBold => bodyMedium.copyWith(fontWeight: FontWeight.w600);
  TextStyle get bodySmallBold => bodySmall.copyWith(fontWeight: FontWeight.w600);
}
