import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/query/QueryAnswer.dart';

part 'QueryMaster.g.dart';

@JsonSerializable()
class QueryMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'syllabus_id')
  String syllabusId;
  @JsonKey(name: 'course_id')
  String courseId;
  @JsonKey(name: 'material_id')
  String materialId;
  @JsonKey(name: 'asked_by')
  String askedBy;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'answers')
  List<QueryAnswer> answers;

  QueryMaster();
  factory QueryMaster.fromJson(Map<String, dynamic> json) =>
      _$QueryMasterFromJson(json);
  Map<String, dynamic> toJson() => _$QueryMasterToJson(this);
}
