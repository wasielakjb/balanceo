import 'package:balanceo/features/transactions/domain/models/transaction_type.dart';
import 'package:equatable/equatable.dart';

class TransactionResource extends Equatable {
  const TransactionResource({
    required this.id,
    required this.type,
    required this.title,
    required this.amount,
    required this.dateTime,
    required this.category,
    required this.note,
  });

  final String id;
  final TransactionType type;
  final String title;
  final double amount;
  final DateTime dateTime;
  final String category;
  final String? note;

  @override
  List<Object?> get props => [
        id,
        type,
        title,
        amount,
        dateTime,
        category,
        note,
      ];
}
