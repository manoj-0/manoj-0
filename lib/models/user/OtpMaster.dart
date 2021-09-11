import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/user/MessageData.dart';
part 'OtpMaster.g.dart';

@JsonSerializable()
class OtpMaster {
  @JsonKey(name: 'ErrorCode')
  String errorCode;
  @JsonKey(name: 'ErrorMessage')
  String errorMessage;
  @JsonKey(name: 'JobId')
  String jobId;
  @JsonKey(name: 'MessageData')
  List<MessageData> messageData;

  OtpMaster();
  factory OtpMaster.fromJson(Map<String, dynamic> json) =>
      _$OtpMasterFromJson(json);
  Map<String, dynamic> toJson() => _$OtpMasterToJson(this);
}
