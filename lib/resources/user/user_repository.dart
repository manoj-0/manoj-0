import 'dart:io';

import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/user/OtpMaster.dart';
import 'package:tda_academy/models/utility/UtilityMaster.dart';

abstract class UserRepository {
  Future<BaseModel<UserMaster>> userLogin(UserMaster userMaster);
  Future<BaseModel<UserMaster>> userRegistration(UserMaster userMaster);
  Future<BaseModel<UserMaster>> userprofile(String accessToken, int userId);
  Future<BaseModel<UserMaster>> updateUser(
      String accessToken, UserMaster userMaster, int userId);
  Future<BaseModel<UserMaster>> forgotPassword(UserMaster user);

  Future<BaseModel<UserMaster>> verifyOtp(UserMaster user);
  Future<BaseModel<ImageMaster>> uploadImage(
      String accessToken, File userImage, int userId, String ownerType);
  Future<BaseModel<UtilityMaster>> getBanners();
}
