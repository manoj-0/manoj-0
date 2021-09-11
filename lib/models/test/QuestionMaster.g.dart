// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QuestionMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionsMaster _$QuestionsMasterFromJson(Map<String, dynamic> json) {
  return QuestionsMaster()
    ..id = json['id'] as int
    ..question = json['question'] as String
    ..op1 = json['op_1'] as String
    ..op2 = json['op_2'] as String
    ..op3 = json['op_3'] as String
    ..op4 = json['op_4'] as String
    ..answer = json['answer'] as String
    ..testId = json['test_id'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$QuestionsMasterToJson(QuestionsMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'op_1': instance.op1,
      'op_2': instance.op2,
      'op_3': instance.op3,
      'op_4': instance.op4,
      'answer': instance.answer,
      'test_id': instance.testId,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
