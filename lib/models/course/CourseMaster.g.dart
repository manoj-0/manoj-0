// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CourseMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseMaster _$CourseMasterFromJson(Map<String, dynamic> json) {
  return CourseMaster()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..rating = json['rating'] as String
    ..desc = json['desc'] as String
    ..courseIncludes = json['course_includes'] as String
    ..whatLearn = json['what_learn'] as String
    ..otherDescription = json['other_description'] as String
    ..actualPrice = json['actual_price'] as String
    ..offerPrice = json['offer_price'] as String
    ..mentorId = json['mentor_id'] as String
    ..courseTypeId = json['course_type_id'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..totalSyllabus = json['total_syllabus'] as String
    ..mentorName = json['mentor_name'] as String
    ..typeName = json['type_name'] as String
    ..totalUsers = json['total_users'] as String
    ..syllabus = (json['syllabus'] as List)
        ?.map((e) => e == null
            ? null
            : SyllabusMaster.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..queries = (json['queries'] as List)
        ?.map((e) =>
            e == null ? null : QueryMaster.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..images = (json['images'] as List)
        ?.map((e) =>
            e == null ? null : ImageMaster.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..user = json['user'] == null
        ? null
        : UserMaster.fromJson(json['user'] as Map<String, dynamic>)
    ..hasBought = json['has_bought'] as bool;
}

Map<String, dynamic> _$CourseMasterToJson(CourseMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'desc': instance.desc,
      'course_includes': instance.courseIncludes,
      'what_learn': instance.whatLearn,
      'other_description': instance.otherDescription,
      'actual_price': instance.actualPrice,
      'offer_price': instance.offerPrice,
      'mentor_id': instance.mentorId,
      'course_type_id': instance.courseTypeId,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'total_syllabus': instance.totalSyllabus,
      'mentor_name': instance.mentorName,
      'type_name': instance.typeName,
      'total_users': instance.totalUsers,
      'syllabus': instance.syllabus,
      'queries': instance.queries,
      'images': instance.images,
      'user': instance.user,
      'has_bought': instance.hasBought,
    };
