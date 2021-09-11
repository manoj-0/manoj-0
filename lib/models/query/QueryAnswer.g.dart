// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QueryAnswer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryAnswer _$QueryAnswerFromJson(Map<String, dynamic> json) {
  return QueryAnswer()
    ..id = json['id'] as int
    ..queryId = json['query_id'] as String
    ..answer = json['answer'] as String
    ..status = json['status'] as String
    ..likedCount = json['liked_count'] as String
    ..dislikedCount = json['disliked_count'] as String
    ..answeredBy = json['answered_by'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..mentor = json['mentor'] == null
        ? null
        : UserMaster.fromJson(json['mentor'] as Map<String, dynamic>);
}

Map<String, dynamic> _$QueryAnswerToJson(QueryAnswer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'query_id': instance.queryId,
      'answer': instance.answer,
      'status': instance.status,
      'liked_count': instance.likedCount,
      'disliked_count': instance.dislikedCount,
      'answered_by': instance.answeredBy,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'mentor': instance.mentor,
    };
