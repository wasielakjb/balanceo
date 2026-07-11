// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$TransactionRequestToJson(TransactionRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'amount': instance.amount,
      'date_time': instance.dateTime.toIso8601String(),
      'category': instance.category,
      'note': instance.note,
    };
