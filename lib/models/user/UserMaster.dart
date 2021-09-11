import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'UserMaster.g.dart';

@JsonSerializable()
class UserMaster {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'access_token')
  String accessToken;
  @JsonKey(name: 'phone_number')
  String phoneNumber;
  @JsonKey(name: 'otp')
  String otp;
  @JsonKey(name: 'password')
  String password;
  @JsonKey(name: 'user_id')
  int userId;
  @JsonKey(name: 'user_type_id')
  String userTypeId;
  @JsonKey(name: 'user_type')
  int userType;
  @JsonKey(name: 'image')
  ImageMaster imageMaster;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'message')
  String message;

  UserMaster();
  factory UserMaster.fromJson(Map<String, dynamic> json) =>
      _$UserMasterFromJson(json);
  Map<String, dynamic> toJson() => _$UserMasterToJson(this);
}
