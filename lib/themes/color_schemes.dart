import 'package:flutter/material.dart';

/// The seed color used to generate the color schemes.
const Color seedColor = Colors.orange;

/// The color schemes for the app.
class AppColorScheme {
  /// The light color scheme generated from [seedColor].
  static final ColorScheme lightColorScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.light,
  );

  /// The dark color scheme generated from [seedColor].
  static final ColorScheme darkColorScheme = ColorScheme.fromSeed(
    seedColor: seedColor,
    brightness: Brightness.dark,
  );
}
