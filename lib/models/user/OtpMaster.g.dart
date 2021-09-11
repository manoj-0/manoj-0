// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OtpMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpMaster _$OtpMasterFromJson(Map<String, dynamic> json) {
  return OtpMaster()
    ..errorCode = json['ErrorCode'] as String
    ..errorMessage = json['ErrorMessage'] as String
    ..jobId = json['JobId'] as String
    ..messageData = (json['MessageData'] as List)
        ?.map((e) =>
            e == null ? null : MessageData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$OtpMasterToJson(OtpMaster instance) => <String, dynamic>{
      'ErrorCode': instance.errorCode,
      'ErrorMessage': instance.errorMessage,
      'JobId': instance.jobId,
      'MessageData': instance.messageData,
    };
