import 'package:flutter/material.dart';

/// Represents a single bar in the chart.
class ChartBar extends StatelessWidget {
  /// Creates an instance of [ChartBar].
  ///
  /// [fill] is the fraction of the bar that should be filled.
  const ChartBar({super.key, required this.fill});

  /// The fraction of the bar that should be filled.
  final double fill;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: FractionallySizedBox(
          heightFactor: fill,
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              color: isDarkMode
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.65),
            ),
          ),
        ),
      ),
    );
  }
}
