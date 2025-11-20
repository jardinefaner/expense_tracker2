import 'package:expense_tracker2/models/expense.dart';
import 'package:flutter/material.dart';

/// Represents a single expense item.
class ExpenseItem extends StatelessWidget {
  /// Creates an instance of [ExpenseItem].
  ///
  /// [expense] is the expense data to display.
  const ExpenseItem(this.expense, {super.key});

  /// The expense data to display.
  final Expense expense;

  /// Returns a card widget containing the expense data.
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Text(expense.title),
            Row(children: [Text('\$${expense.amount.toStringAsFixed(2)}'), const Spacer(), Text(expense.date.toString()]),
          ],
        ),
      ),
    );
  }
}
