import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/model_barrel.dart';

part 'SyllabusMaster.g.dart';

@JsonSerializable()
class SyllabusMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'course_id')
  String courseId;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'desc')
  String desc;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  @JsonKey(name: 'materials')
  List<MaterialMaster> materials;

  SyllabusMaster();
  factory SyllabusMaster.fromJson(Map<String, dynamic> json) =>
      _$SyllabusMasterFromJson(json);
  Map<String, dynamic> toJson() => _$SyllabusMasterToJson(this);
}
