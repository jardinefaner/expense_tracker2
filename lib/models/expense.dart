import 'package:uuid/uuid.dart';

/// A singleton instance of [Uuid] to generate unique identifiers.
const uuid = Uuid();

/// Represents a single expense entry.
class Expense {
  /// Creates a new [Expense] with a unique ID.
  Expense({
    required this.title,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();

  /// The unique identifier for this expense.
  final String id;

  /// The title of the expense (e.g., "Groceries").
  final String title;

  /// The amount of money spent.
  final double amount;

  /// The date when the expense occurred.
  final DateTime date;
}
