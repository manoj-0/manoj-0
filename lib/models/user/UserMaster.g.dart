// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserMaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMaster _$UserMasterFromJson(Map<String, dynamic> json) {
  return UserMaster()
    ..name = json['name'] as String
    ..accessToken = json['access_token'] as String
    ..phoneNumber = json['phone_number'] as String
    ..otp = json['otp'] as String
    ..password = json['password'] as String
    ..userId = json['user_id'] as int
    ..userTypeId = json['user_type_id'] as String
    ..userType = json['user_type'] as int
    ..imageMaster = json['image'] == null
        ? null
        : ImageMaster.fromJson(json['image'] as Map<String, dynamic>)
    ..flags = json['flags'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..message = json['message'] as String;
}

Map<String, dynamic> _$UserMasterToJson(UserMaster instance) =>
    <String, dynamic>{
      'name': instance.name,
      'access_token': instance.accessToken,
      'phone_number': instance.phoneNumber,
      'otp': instance.otp,
      'password': instance.password,
      'user_id': instance.userId,
      'user_type_id': instance.userTypeId,
      'user_type': instance.userType,
      'image': instance.imageMaster,
      'flags': instance.flags,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'message': instance.message,
    };
