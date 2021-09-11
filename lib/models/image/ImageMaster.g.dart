// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ImageMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageMaster _$ImageMasterFromJson(Map<String, dynamic> json) {
  return ImageMaster()
    ..ownerId = json['owner_id'] as String
    ..imageUrl = json['image_url'] as String
    ..ownertype = json['owner_type'] as String
    ..updatedAt = json['updated_at'] as String
    ..createdAt = json['created_at'] as String
    ..id = json['id'] as int;
}

Map<String, dynamic> _$ImageMasterToJson(ImageMaster instance) =>
    <String, dynamic>{
      'owner_id': instance.ownerId,
      'image_url': instance.imageUrl,
      'owner_type': instance.ownertype,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
