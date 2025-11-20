import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final display_font = GoogleFonts.merriweather();
final body_font = GoogleFonts.montserrat();

class AppTextTheme {
  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      displayLarge: base.displayLarge!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      displayMedium: base.displayMedium!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      displaySmall: base.displaySmall!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      headlineLarge: base.headlineLarge!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      headlineMedium: base.headlineMedium!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      headlineSmall: base.headlineSmall!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      titleLarge: base.titleLarge!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      titleMedium: base.titleMedium!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      titleSmall: base.titleSmall!.copyWith(
        fontFamily: display_font.fontFamily,
      ),
      bodyLarge: base.bodyLarge!.copyWith(fontFamily: body_font.fontFamily),
      bodyMedium: base.bodyMedium!.copyWith(fontFamily: body_font.fontFamily),
      bodySmall: base.bodySmall!.copyWith(fontFamily: body_font.fontFamily),
      labelLarge: base.labelLarge!.copyWith(fontFamily: body_font.fontFamily),
      labelMedium: base.labelMedium!.copyWith(fontFamily: body_font.fontFamily),
      labelSmall: base.labelSmall!.copyWith(fontFamily: body_font.fontFamily),
    );
  }

  static TextTheme lightTextTheme = _buildTextTheme(
    ThemeData.light().textTheme,
  );

  static TextTheme darkTextTheme = _buildTextTheme(ThemeData.dark().textTheme);
}
