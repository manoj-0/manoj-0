import 'package:json_annotation/json_annotation.dart';

part 'MaterialMaster.g.dart';

@JsonSerializable()
class MaterialMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'file_location')
  String fileLocation;
  @JsonKey(name: 'category')
  String category;
  @JsonKey(name: 'mt_id')
  String mtId;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  MaterialMaster();
  factory MaterialMaster.fromJson(Map<String, dynamic> json) =>
      _$MaterialMasterFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialMasterToJson(this);
}
