// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FaqMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaqMaster _$FaqMasterFromJson(Map<String, dynamic> json) {
  return FaqMaster()
    ..id = json['id'] as int
    ..question = json['question'] as String
    ..answer = json['answer'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$FaqMasterToJson(FaqMaster instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
