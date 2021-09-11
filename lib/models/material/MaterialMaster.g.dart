// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MaterialMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialMaster _$MaterialMasterFromJson(Map<String, dynamic> json) {
  return MaterialMaster()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..fileLocation = json['file_location'] as String
    ..category = json['category'] as String
    ..mtId = json['mt_id'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$MaterialMasterToJson(MaterialMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'file_location': instance.fileLocation,
      'category': instance.category,
      'mt_id': instance.mtId,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
