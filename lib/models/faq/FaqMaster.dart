import 'package:json_annotation/json_annotation.dart';

part 'FaqMaster.g.dart';

@JsonSerializable()
class FaqMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'question')
  String question;
  @JsonKey(name: 'answer')
  String answer;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  FaqMaster();
  factory FaqMaster.fromJson(Map<String, dynamic> json) =>
      _$FaqMasterFromJson(json);
  Map<String, dynamic> toJson() => _$FaqMasterToJson(this);
}
