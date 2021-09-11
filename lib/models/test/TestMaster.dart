import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/test/option_master.dart';

part 'TestMaster.g.dart';

@JsonSerializable()
class TestMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'syllabus_id')
  String syllabusId;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'questions')
  List<QuestionsMaster> questionMaster;

  TestMaster();
  factory TestMaster.fromJson(Map<String, dynamic> json) =>
      _$TestMasterFromJson(json);
  Map<String, dynamic> toJson() => _$TestMasterToJson(this);
}
