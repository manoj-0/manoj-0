import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/user/OtpMaster.dart';
import 'package:tda_academy/models/utility/UtilityMaster.dart';
import 'package:tda_academy/resources/user/user_repository.dart';
import 'package:tda_academy/rest_client/ApiClient.dart';
import 'package:tda_academy/utils/app_constants.dart';

import 'package:http/http.dart' as http;

class UserRepositoryImpl implements UserRepository {
  Dio dio;
  ApiClient apiClient;
  UserRepositoryImpl() {
    dio = new Dio();
    //dio.options.headers["Content-Type"] = "application/json";
    dio.interceptors.add(PrettyDioLogger());
    apiClient = new ApiClient(dio);
  }
  @override
  Future<BaseModel<UserMaster>> userLogin(UserMaster userMaster) async {
    UserMaster userMasters;
    try {
      userMasters = await apiClient.userLogin(userMaster);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      /**
       * either api run or failed this method will always return basemodel class
       * if api fails we set exception in the base model class
       * if api works then we set api response into basemodel data variable
       */
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = userMasters;
  }

  @override
  Future<BaseModel<UserMaster>> userprofile(
      String accessToken, int userId) async {
    UserMaster userMasters;
    try {
      userMasters =
          await apiClient.getuserProfile("Bearer " + accessToken, userId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      /**
       * either api run or failed this method will always return basemodel class
       * if api fails we set exception in the base model class
       * if api works then we set api response into basemodel data variable
       */
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = userMasters;
  }

  @override
  Future<BaseModel<UserMaster>> updateUser(
      String accessToken, UserMaster userMaster, int userId) async {
    UserMaster userMasters;
    try {
      userMasters = await apiClient.updateUserProfile(
          "Bearer " + accessToken, userMaster, userId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      /**
       * either api run or failed this method will always return basemodel class
       * if api fails we set exception in the base model class
       * if api works then we set api response into basemodel data variable
       */
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = userMasters;
  }

  @override
  Future<BaseModel<UserMaster>> userRegistration(UserMaster userMaster) async {
    UserMaster userMasters;
    try {
      userMasters = await apiClient.userRegistration(userMaster);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      /**
       * either api run or failed this method will always return basemodel class
       * if api fails we set exception in the base model class
       * if api works then we set api response into basemodel data variable
       */
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = userMasters;
  }

  @override
  Future<BaseModel<UserMaster>> forgotPassword(UserMaster user) async {
    OtpMaster otpMaster;
    UserMaster userMaster;

    try {
      otpMaster =
          await apiClient.forgotPasswordOtp(user.phoneNumber, user.message);

      userMaster = await apiClient.forgotPassword(user);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      /**
       * either api run or failed this method will always return basemodel class
       * if api fails we set exception in the base model class
       * if api works then we set api response into basemodel data variable
       */
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = userMaster;
  }

  @override
  Future<BaseModel<UserMaster>> verifyOtp(UserMaster user) async {
    UserMaster userMaster;
    try {
      userMaster = await apiClient.verifyOtp(user);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      /**
       * either api run or failed this method will always return basemodel class
       * if api fails we set exception in the base model class
       * if api works then we set api response into basemodel data variable
       */
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = userMaster;
  }

  @override
  Future<BaseModel<ImageMaster>> uploadImage(
      String accessToken, File userImage, int userId, String ownerType) async {
    ImageMaster imageMaster;
    try {
      String severUrl = api_url + "image/test";
      String fileName = userImage.path.split('/').last;
      Dio dio = new Dio();
      dio.options.headers["Authorization"] = "Bearer " + accessToken;
      Map<String, String> headers = {"Authorization": "Bearer " + accessToken};
      FormData formData = FormData.fromMap({
        "owner_id": userId,
        "owner_type": "2",
        "image_url":
            await MultipartFile.fromFile(userImage.path, filename: fileName)
      });
      var respStr = await dio.post(
        severUrl,
        data: formData,
      );
      imageMaster = ImageMaster.fromJson(respStr.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");

      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = imageMaster;
  }

  @override
  Future<BaseModel<UtilityMaster>> getBanners() async {
    UtilityMaster utilityMaster;
    try {
      utilityMaster = await apiClient.getBanners();
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      /**
       * either api run or failed this method will always return basemodel class
       * if api fails we set exception in the base model class
       * if api works then we set api response into basemodel data variable
       */
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = utilityMaster;
  }

/**
 * image upload with http
//  */
//try {
//       String severUrl = "http://192.168.43.170:8888/tda_app/api/image/test";
//       Map<String, String> headers = {"Authorization": "Bearer " + accessToken};
//       var request = http.MultipartRequest('POST', Uri.parse(severUrl));
//       request.files
//           .add(await http.MultipartFile.fromPath('image_url', userImage.path));
//       request.headers.addAll(headers);
//       request.fields['owner_id'] = "$userId";
//       request.fields['owner_type'] = "2";

//       //request.headers["Authorization"] = "Bearer " + accessToken;
//       var res = await request.send();
//       final respStr = await res.stream.bytesToString();
//       print(respStr);
//       imageMaster = ImageMaster.fromJson(json.decode(respStr));
//     } catch (error, stacktrace) {
//       print("Exception occured: $error stackTrace: $stacktrace");

//       return BaseModel()..setException(ServerError.withError(error: error));
//     }
//     return BaseModel()..data = imageMaster;
/**
 * end of image upload
 */

  // Future<dynamic> _upload(File file) async {
  //   if (file == null) return;
  //   String fileName = file.path.split('/').last;
  //   Map<String, dynamic> formData = {
  //     "owner_id": userId,
  //     "owner_type": 3,
  //     "image_url": await MultipartFile.fromFile(file.path, filename: fileName),
  //   };
  //   Map<String, String> headers = {
  //     "Accept": "application/json",
  //     "Authorization": "Bearer " + accessToken
  //   };
  //   return await Dio()
  //       .post(api_url + "image",
  //           data: formData, options: Options(headers: headers))
  //       .then((dynamic result) {
  //     print(result.toString());
  //   });
  // }
}
