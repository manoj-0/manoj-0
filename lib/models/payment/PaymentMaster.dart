import 'package:json_annotation/json_annotation.dart';

part 'PaymentMaster.g.dart';

@JsonSerializable()
class PaymentMaster {
  @JsonKey(name: 'mode_id')
  String modeId;
  @JsonKey(name: 'amount')
  String amount;
  @JsonKey(name: 'user_id')
  String userId;
  @JsonKey(name: 'order_id')
  String orderId;
  @JsonKey(name: 'currency')
  String currency;
  @JsonKey(name: 'transaction_id')
  String transactionId;
  @JsonKey(name: 'transaction_date')
  String transactionDate;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'id')
  int id;

  PaymentMaster();
  factory PaymentMaster.fromJson(Map<String, dynamic> json) =>
      _$PaymentMasterFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentMasterToJson(this);
}
