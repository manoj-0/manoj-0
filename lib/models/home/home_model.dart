import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: "Status")
  int status;
  @JsonKey(name: "Data")
  HomeModel homeModel;
  @JsonKey(name: "NetworkCount")
  int networkCount;
  // @JsonKey(name: "FeaturedDoctors")
  // List<FeatureDoctorModel> featuredDoctors;
  // @JsonKey(name: "FeaturedSpecialities")
  // List<FeatureSpecialityModel> featuredSpecialities;
  // @JsonKey(name: "Facilities")
  // List<FeatureFacilityModel> facilities;
  @JsonKey(name: "DoctorCount")
  int doctorCount;
  @JsonKey(name: "PharmacyCount")
  int pharmacyCount;
  @JsonKey(name: "FacilityCount")
  int facilityCount;
  @JsonKey(name: "SeniorcareCount")
  int seniorcareCount;

  HomeModel();
  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}
