import 'package:tda_academy/models/model_barrel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'QueryAnswer.g.dart';

@JsonSerializable()
class QueryAnswer {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'query_id')
  String queryId;
  @JsonKey(name: 'answer')
  String answer;
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'liked_count')
  String likedCount;
  @JsonKey(name: 'disliked_count')
  String dislikedCount;
  @JsonKey(name: 'answered_by')
  String answeredBy;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'mentor')
  UserMaster mentor;

  QueryAnswer();
  factory QueryAnswer.fromJson(Map<String, dynamic> json) =>
      _$QueryAnswerFromJson(json);
  Map<String, dynamic> toJson() => _$QueryAnswerToJson(this);
}
