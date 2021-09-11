// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_master.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BlogMaster _$BlogMasterFromJson(Map<String, dynamic> json) {
  return BlogMaster()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..thumbnailImage = json['thumbnail_image'] as String
    ..userId = json['user_id'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..user = json['user'] == null
        ? null
        : UserMaster.fromJson(json['user'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BlogMasterToJson(BlogMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail_image': instance.thumbnailImage,
      'user_id': instance.userId,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'user': instance.user,
    };
