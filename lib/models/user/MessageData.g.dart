// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MessageData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageData _$MessageDataFromJson(Map<String, dynamic> json) {
  return MessageData()
    ..number = json['Number'] as String
    ..messageId = json['MessageId'] as String;
}

Map<String, dynamic> _$MessageDataToJson(MessageData instance) =>
    <String, dynamic>{
      'Number': instance.number,
      'MessageId': instance.messageId,
    };
