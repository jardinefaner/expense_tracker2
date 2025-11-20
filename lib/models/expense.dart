import 'package:uuid/uuid.dart';

/// A singleton instance of [Uuid] to generate unique identifiers.
const uuid = Uuid();

/// Represents a category for expenses.
enum Category {
  /// Expenses related to food and dining.
  food,

  /// Expenses related to travel and transportation.
  travel,

  /// Expenses related to leisure and entertainment.
  leisure,

  /// Work-related expenses.
  work,
}

/// Represents a single expense entry.
class Expense {
  /// Creates a new [Expense] with a unique ID.
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  /// The unique identifier for this expense.
  final String id;

  /// The title of the expense (e.g., "Groceries").
  final String title;

  /// The amount of money spent.
  final double amount;

  /// The date when the expense occurred.
  final DateTime date;

  /// The category of the expense.
  final Category category;
}
