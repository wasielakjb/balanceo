import 'package:balanceo/core/domain/model/json.dart';
import 'package:balanceo/core/domain/request/form_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, createFactory: false)
class TransactionRequest implements FormRequest {
  const TransactionRequest({
    required this.type,
    required this.title,
    required this.amount,
    required this.dateTime,
    required this.category,
    required this.note,
  });

  final String type;
  final String title;
  final double amount;
  final DateTime dateTime;
  final String category;
  final String? note;

  @override
  Json toJson() => _$TransactionRequestToJson(this);
}
