import 'package:json_annotation/json_annotation.dart';

part 'CourseTypeMaster.g.dart';

@JsonSerializable()
class CourseTypeMaster {
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

  CourseTypeMaster();
  factory CourseTypeMaster.fromJson(Map<String, dynamic> json) =>
      _$CourseTypeMasterFromJson(json);
  Map<String, dynamic> toJson() => _$CourseTypeMasterToJson(this);
}
