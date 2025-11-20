import 'package:expense_tracker2/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

/// The entry point of the application.
void main() {
  runApp(const MyApp());
}

/// The root widget of the application.
///
/// This widget sets up the [MaterialApp] with the app's theme and home screen.
class MyApp extends StatelessWidget {
  /// Creates an instance of [MyApp].
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
