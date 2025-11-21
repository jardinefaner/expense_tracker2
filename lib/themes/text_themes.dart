import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Utilities for creating the app's text theme.
class AppTextTheme {
  /// Creates a custom text theme with Montserrat for body and Merriweather for headings.
  static TextTheme _createTheme(TextTheme base) {
    final bodyTheme = GoogleFonts.montserratTextTheme(base);
    final headingTheme = GoogleFonts.merriweatherTextTheme(base);

    return bodyTheme.copyWith(
      displayLarge: headingTheme.displayLarge,
      displayMedium: headingTheme.displayMedium,
      displaySmall: headingTheme.displaySmall,
      headlineLarge: headingTheme.headlineLarge,
      headlineMedium: headingTheme.headlineMedium,
      headlineSmall: headingTheme.headlineSmall,
      titleLarge: headingTheme.titleLarge,
      titleMedium: headingTheme.titleMedium,
      titleSmall: headingTheme.titleSmall,
    );
  }

  /// The light text theme.
  static TextTheme lightTextTheme = _createTheme(ThemeData.light().textTheme);

  /// The dark text theme.
  static TextTheme darkTextTheme = _createTheme(ThemeData.dark().textTheme);
}
