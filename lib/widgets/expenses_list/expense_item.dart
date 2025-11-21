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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleMedium),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
