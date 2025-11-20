import 'package:expense_tracker2/models/expense.dart';
import 'package:flutter/material.dart';

/// The main widget for the expenses feature.
///
/// Displays a chart of expenses and a list of individual expense items.
class Expenses extends StatefulWidget {
  /// Creates an instance of [Expenses].
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [Expense(
    title: 'Flutter Course', amount: 19.99, date: DateTime.now(), category: Category.work
  ),];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('The chart', style: Theme.of(context).textTheme.titleLarge),
        const Text('The list of expenses'),
        const Text('The new expense'),
      ],
    );
  }
}
