import 'package:json_annotation/json_annotation.dart';

part 'MaterialTypeMaster.g.dart';

@JsonSerializable()
class MaterialTypeMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  MaterialTypeMaster();
  factory MaterialTypeMaster.fromJson(Map<String, dynamic> json) =>
      _$MaterialTypeMasterFromJson(json);
  Map<String, dynamic> toJson() => _$MaterialTypeMasterToJson(this);
}
