import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// The font used for display text (headlines, titles).
final displayFont = GoogleFonts.merriweather();

/// The font used for body text.
final bodyFont = GoogleFonts.montserrat();

/// Utilities for creating the app's text theme.
class AppTextTheme {
  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      displayLarge: base.displayLarge!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      displayMedium: base.displayMedium!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      displaySmall: base.displaySmall!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      headlineLarge: base.headlineLarge!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      headlineMedium: base.headlineMedium!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      headlineSmall: base.headlineSmall!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      titleLarge: base.titleLarge!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      titleMedium: base.titleMedium!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      titleSmall: base.titleSmall!.copyWith(
        fontFamily: displayFont.fontFamily,
      ),
      bodyLarge: base.bodyLarge!.copyWith(fontFamily: bodyFont.fontFamily),
      bodyMedium: base.bodyMedium!.copyWith(fontFamily: bodyFont.fontFamily),
      bodySmall: base.bodySmall!.copyWith(fontFamily: bodyFont.fontFamily),
      labelLarge: base.labelLarge!.copyWith(fontFamily: bodyFont.fontFamily),
      labelMedium: base.labelMedium!.copyWith(fontFamily: bodyFont.fontFamily),
      labelSmall: base.labelSmall!.copyWith(fontFamily: bodyFont.fontFamily),
    );
  }

  /// The light text theme.
  static TextTheme lightTextTheme = _buildTextTheme(
    ThemeData.light().textTheme,
  );

  /// The dark text theme.
  static TextTheme darkTextTheme = _buildTextTheme(ThemeData.dark().textTheme);
}
