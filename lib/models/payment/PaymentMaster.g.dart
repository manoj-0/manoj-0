// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PaymentMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMaster _$PaymentMasterFromJson(Map<String, dynamic> json) {
  return PaymentMaster()
    ..modeId = json['mode_id'] as String
    ..amount = json['amount'] as String
    ..userId = json['user_id'] as String
    ..orderId = json['order_id'] as String
    ..currency = json['currency'] as String
    ..transactionId = json['transaction_id'] as String
    ..transactionDate = json['transaction_date'] as String
    ..status = json['status'] as String
    ..updatedAt = json['updated_at'] as String
    ..createdAt = json['created_at'] as String
    ..id = json['id'] as int;
}

Map<String, dynamic> _$PaymentMasterToJson(PaymentMaster instance) =>
    <String, dynamic>{
      'mode_id': instance.modeId,
      'amount': instance.amount,
      'user_id': instance.userId,
      'order_id': instance.orderId,
      'currency': instance.currency,
      'transaction_id': instance.transactionId,
      'transaction_date': instance.transactionDate,
      'status': instance.status,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
