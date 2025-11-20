import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

/// A singleton instance of [DateFormat] for formatting dates.
final formatter = DateFormat.yMd();

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

/// A map of [Category] values to corresponding [IconData] icons.
///
/// These icons are used to represent the categories in the app.
/// The keys are the [Category] values and the values are the corresponding [IconData] icons.
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

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

  /// Generates a formatted string representation of the expense's date.
  ///
  /// The date is formatted using the [formatter] and returned as a string.
  String get formattedDate {
    return formatter.format(date);
  }
}
