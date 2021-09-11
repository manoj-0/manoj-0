import 'package:json_annotation/json_annotation.dart';
part 'UserCourseMapping.g.dart';

@JsonSerializable()
class UserCourseMapping {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'user_id')
  String userId;
  @JsonKey(name: 'course_id')
  String courseId;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  UserCourseMapping();
  factory UserCourseMapping.fromJson(Map<String, dynamic> json) =>
      _$UserCourseMappingFromJson(json);
  Map<String, dynamic> toJson() => _$UserCourseMappingToJson(this);
}
