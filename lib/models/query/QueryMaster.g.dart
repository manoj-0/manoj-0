// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QueryMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryMaster _$QueryMasterFromJson(Map<String, dynamic> json) {
  return QueryMaster()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..syllabusId = json['syllabus_id'] as String
    ..courseId = json['course_id'] as String
    ..materialId = json['material_id'] as String
    ..askedBy = json['asked_by'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..answers = (json['answers'] as List)
        ?.map((e) =>
            e == null ? null : QueryAnswer.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$QueryMasterToJson(QueryMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'syllabus_id': instance.syllabusId,
      'course_id': instance.courseId,
      'material_id': instance.materialId,
      'asked_by': instance.askedBy,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'answers': instance.answers,
    };
