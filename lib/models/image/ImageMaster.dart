import 'package:json_annotation/json_annotation.dart';

part 'ImageMaster.g.dart';

@JsonSerializable()
class ImageMaster {
  @JsonKey(name: 'owner_id')
  String ownerId;
  @JsonKey(name: 'image_url')
  String imageUrl;
  @JsonKey(name: 'owner_type')
  String ownertype;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'id')
  int id;

  ImageMaster();
  factory ImageMaster.fromJson(Map<String, dynamic> json) =>
      _$ImageMasterFromJson(json);
  Map<String, dynamic> toJson() => _$ImageMasterToJson(this);
}
