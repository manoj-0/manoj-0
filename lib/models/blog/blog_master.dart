import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'blog_master.g.dart';

@JsonSerializable()
class BlogMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'thumbnail_image')
  String thumbnailImage;
  @JsonKey(name: 'user_id')
  String userId;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'user')
  UserMaster user;

  BlogMaster();
  factory BlogMaster.fromJson(Map<String, dynamic> json) =>
      _$BlogMasterFromJson(json);
  Map<String, dynamic> toJson() => _$BlogMasterToJson(this);
}
