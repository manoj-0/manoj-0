// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MaterialTypeMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialTypeMaster _$MaterialTypeMasterFromJson(Map<String, dynamic> json) {
  return MaterialTypeMaster()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$MaterialTypeMasterToJson(MaterialTypeMaster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
