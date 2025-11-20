import 'package:flutter/material.dart';

/// The home screen of the application.
///
/// Displays a simple greeting for now.
class HomeScreen extends StatelessWidget {
  /// Creates an instance of [HomeScreen].
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello, world!'),
      ),
    );
  }
}
