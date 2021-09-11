import 'package:json_annotation/json_annotation.dart';

part 'QuestionMaster.g.dart';

@JsonSerializable()
class QuestionsMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'question')
  String question;
  @JsonKey(name: 'op_1')
  String op1;
  @JsonKey(name: 'op_2')
  String op2;
  @JsonKey(name: 'op_3')
  String op3;
  @JsonKey(name: 'op_4')
  String op4;
  @JsonKey(name: 'answer')
  String answer;
  @JsonKey(name: 'test_id')
  String testId;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  QuestionsMaster();
  factory QuestionsMaster.fromJson(Map<String, dynamic> json) =>
      _$QuestionsMasterFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionsMasterToJson(this);
}
