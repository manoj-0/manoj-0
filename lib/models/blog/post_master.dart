import 'package:tda_academy/models/model_barrel.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'post_master.g.dart';

@JsonSerializable()
class PostMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'content')
  String content;
  @JsonKey(name: 'blog_id')
  String blogId;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'blog')
  BlogMaster blog;

  PostMaster();
  factory PostMaster.fromJson(Map<String, dynamic> json) =>
      _$PostMasterFromJson(json);
  Map<String, dynamic> toJson() => _$PostMasterToJson(this);
}
