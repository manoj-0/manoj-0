// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return HomeModel()
    ..status = json['Status'] as int
    ..homeModel = json['Data'] == null
        ? null
        : HomeModel.fromJson(json['Data'] as Map<String, dynamic>)
    ..networkCount = json['NetworkCount'] as int
    ..doctorCount = json['DoctorCount'] as int
    ..pharmacyCount = json['PharmacyCount'] as int
    ..facilityCount = json['FacilityCount'] as int
    ..seniorcareCount = json['SeniorcareCount'] as int;
}

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'Status': instance.status,
      'Data': instance.homeModel,
      'NetworkCount': instance.networkCount,
      'DoctorCount': instance.doctorCount,
      'PharmacyCount': instance.pharmacyCount,
      'FacilityCount': instance.facilityCount,
      'SeniorcareCount': instance.seniorcareCount,
    };
