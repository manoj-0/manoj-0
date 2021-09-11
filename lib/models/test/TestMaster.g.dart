// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TestMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestMaster _$TestMasterFromJson(Map<String, dynamic> json) {
  return TestMaster()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..syllabusId = json['syllabus_id'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..questionMaster = (json['questions'] as List)
        ?.map((e) => e == null
            ? null
            : QuestionsMaster.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TestMasterToJson(TestMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'syllabus_id': instance.syllabusId,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'questions': instance.questionMaster,
    };
