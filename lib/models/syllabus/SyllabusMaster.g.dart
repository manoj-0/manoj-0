// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SyllabusMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyllabusMaster _$SyllabusMasterFromJson(Map<String, dynamic> json) {
  return SyllabusMaster()
    ..id = json['id'] as int
    ..courseId = json['course_id'] as String
    ..name = json['name'] as String
    ..desc = json['desc'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..materials = (json['materials'] as List)
        ?.map((e) => e == null
            ? null
            : MaterialMaster.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SyllabusMasterToJson(SyllabusMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'name': instance.name,
      'desc': instance.desc,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'materials': instance.materials,
    };
