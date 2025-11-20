import 'package:expense_tracker2/themes/text_themes.dart';
import 'package:expense_tracker2/themes/color_schemes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColorScheme.lightColorScheme,
    textTheme: AppTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: AppColorScheme.darkColorScheme,
    textTheme: AppTextTheme.darkTextTheme,
  );
}