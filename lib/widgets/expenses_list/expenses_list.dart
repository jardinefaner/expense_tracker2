import 'package:expense_tracker2/models/expense.dart';
import 'package:expense_tracker2/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

/// A widget that displays a list of expenses.
class ExpensesList extends StatelessWidget {
  /// Creates an instance of [ExpensesList].
  ///
  /// [expenses] is the list of expenses to display.
  /// [onRemoveExpense] is a callback function that is called when an expense is removed.
  const ExpensesList({super.key, required this.expenses, required this.onRemoveExpense});

  /// The list of expenses to display.
  final List<Expense> expenses;
  
  /// The callback function to call when an expense is removed.
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenses[index].id),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
