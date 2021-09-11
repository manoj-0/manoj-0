import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'CourseMaster.g.dart';

@JsonSerializable()
class CourseMaster {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'rating')
  String rating;
  @JsonKey(name: 'desc')
  String desc;
  @JsonKey(name: 'course_includes')
  String courseIncludes;
  @JsonKey(name: 'what_learn')
  String whatLearn;
  @JsonKey(name: 'other_description')
  String otherDescription;
  @JsonKey(name: 'actual_price')
  String actualPrice;
  @JsonKey(name: 'offer_price')
  String offerPrice;
  @JsonKey(name: 'mentor_id')
  String mentorId;
  @JsonKey(name: 'course_type_id')
  String courseTypeId;
  @JsonKey(name: 'flags')
  String flags;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'total_syllabus')
  String totalSyllabus;
  @JsonKey(name: 'mentor_name')
  String mentorName;
  @JsonKey(name: 'type_name')
  String typeName;
  @JsonKey(name: 'total_users')
  String totalUsers;
  @JsonKey(name: 'syllabus')
  List<SyllabusMaster> syllabus;
  @JsonKey(name: 'queries')
  List<QueryMaster> queries;
  @JsonKey(name: 'images')
  List<ImageMaster> images;
  @JsonKey(name: 'user')
  UserMaster user;
  @JsonKey(name: 'has_bought')
  bool hasBought;

  CourseMaster();
  factory CourseMaster.fromJson(Map<String, dynamic> json) =>
      _$CourseMasterFromJson(json);
  Map<String, dynamic> toJson() => _$CourseMasterToJson(this);
}
