// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserCourseMapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCourseMapping _$UserCourseMappingFromJson(Map<String, dynamic> json) {
  return UserCourseMapping()
    ..id = json['id'] as int
    ..userId = json['user_id'] as String
    ..courseId = json['course_id'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$UserCourseMappingToJson(UserCourseMapping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'course_id': instance.courseId,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
