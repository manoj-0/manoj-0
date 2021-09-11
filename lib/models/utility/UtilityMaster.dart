import 'package:json_annotation/json_annotation.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'UtilityMaster.g.dart';

@JsonSerializable()
class UtilityMaster {
  @JsonKey(name: 'image1')
  String image1;
  @JsonKey(name: 'image2')
  String image2;
  @JsonKey(name: 'image3')
  String image3;
  @JsonKey(name: 'image4')
  String image4;

  UtilityMaster();
  factory UtilityMaster.fromJson(Map<String, dynamic> json) =>
      _$UtilityMasterFromJson(json);
  Map<String, dynamic> toJson() => _$UtilityMasterToJson(this);
}
