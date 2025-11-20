import 'package:expense_tracker2/models/expense.dart';
import 'package:flutter/material.dart';

/// The main widget for the expenses feature.
///
/// Displays a chart of expenses and a list of individual expense items.
class ExpensesList extends StatelessWidget {
 /// Creates an instance of [ExpensesList].
 const ExpensesList({super.key, required this.expenses});

 /// The list of expenses to display.
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Text(expenses[index].title),
    );
  }
}