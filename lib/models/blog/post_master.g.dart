// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_master.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostMaster _$PostMasterFromJson(Map<String, dynamic> json) {
  return PostMaster()
    ..id = json['id'] as int
    ..content = json['content'] as String
    ..blogId = json['blog_id'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..blog = json['blog'] == null
        ? null
        : BlogMaster.fromJson(json['blog'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PostMasterToJson(PostMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'blog_id': instance.blogId,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'blog': instance.blog,
    };
