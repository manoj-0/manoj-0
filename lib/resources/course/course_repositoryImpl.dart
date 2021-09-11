import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/course/UserCourseMapping.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/payment/PaymentMaster.dart';
import 'package:tda_academy/rest_client/ApiClient.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';

import 'course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  Dio dio;
  ApiClient apiClient;
  String accessToken =
      PreferenceUtils.getString(access_token, defValue: def_val_sf);
  CourseRepositoryImpl() {
    dio = new Dio();
    //dio.options.headers["Content-Type"] = "application/json";
    //dio.interceptors.add(PrettyDioLogger());
    /*dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options){
      options.headers["Authorization"] = "Bearer " + accessToken;
      return options;
    },
        onResponse: (Response response){},
        onError: (DioError error){}) );*/
    apiClient = new ApiClient(dio);
  }
  @override
  Future<BaseModel<List<CourseMaster>>> getCourseList(
      String accessToken) async {
    List<CourseMaster> courseList;
    try {
      courseList = await apiClient.getCourseListWithoutAuth();
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    /* var response =
        await rootBundle.loadString('assets/json/doctors_master.json');

    try {
      doctors = DoctorsModel.fromJson(json.decode(response));
    } catch (e) {
      throw Exception(e.toString());
    } */

    return BaseModel()..data = courseList;
  }

  @override
  Future<BaseModel<List<SyllabusMaster>>> getSyllabusList(
      String accessToken, int courseId) async {
    List<SyllabusMaster> syllabusList;
    try {
      syllabusList =
          await apiClient.getSyllabusList("Bearer " + accessToken, courseId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    return BaseModel()..data = syllabusList;
  }

  @override
  Future<BaseModel<List<CourseMaster>>> getMyCourseList(
      String accessToken, int userId) async {
    List<CourseMaster> courseList;
    try {
      courseList =
          await apiClient.getMyCourseList("Bearer " + accessToken, userId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    /* var response =
        await rootBundle.loadString('assets/json/doctors_master.json');

    try {
      doctors = DoctorsModel.fromJson(json.decode(response));
    } catch (e) {
      throw Exception(e.toString());
    } */

    return BaseModel()..data = courseList;
  }

  @override
  Future<BaseModel<UserCourseMapping>> saveUserCourse(
      String accessToken, int userId, int courseId) async {
    UserCourseMapping userCourseMapping;
    try {
      userCourseMapping = await apiClient.saveUserCourse(
          "Bearer " + accessToken, userId, courseId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    /* var response =
        await rootBundle.loadString('assets/json/doctors_master.json');

    try {
      doctors = DoctorsModel.fromJson(json.decode(response));
    } catch (e) {
      throw Exception(e.toString());
    } */

    return BaseModel()..data = userCourseMapping;
  }

  @override
  Future<BaseModel<PaymentMaster>> savePaymentInfo(
      String accessToken,
      String userName,
      String address,
      int courseId,
      String city,
      String state,
      String zipCode,
      double amount,
      int userId,
      String orderId,
      String currency,
      String transactionId,
      String transactionDate,
      int status,
      String modeId) async {
    PaymentMaster paymentMaster;
    try {
      paymentMaster = await apiClient.savePaymentInfo(
          "Bearer " + accessToken,
          userName,
          address,
          courseId,
          city,
          state,
          zipCode,
          amount,
          userId,
          orderId,
          currency,
          transactionDate,
          transactionId,
          status,
          modeId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    /* var response =
        await rootBundle.loadString('assets/json/doctors_master.json');

    try {
      doctors = DoctorsModel.fromJson(json.decode(response));
    } catch (e) {
      throw Exception(e.toString());
    } */

    return BaseModel()..data = paymentMaster;
  }

//save user query
  @override
  Future<BaseModel<QueryMaster>> saveUserQuery(
      String accessToken, QueryMaster queryMasterData) async {
    QueryMaster queryMaster;
    try {
      queryMaster = await apiClient.saveUserQuery(
          "Bearer " + accessToken, queryMasterData);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    /* var response =
        await rootBundle.loadString('assets/json/doctors_master.json');

    try {
      doctors = DoctorsModel.fromJson(json.decode(response));
    } catch (e) {
      throw Exception(e.toString());
    } */

    return BaseModel()..data = queryMaster;
  }

  @override
  Future<BaseModel<CourseMaster>> hasCourseBought(
      String accessToken, int courseId, int userId) async {
    CourseMaster courseMaster;
    try {
      courseMaster = await apiClient.hasCourseBought(
          "Bearer " + accessToken, courseId, userId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    return BaseModel()..data = courseMaster;
  }
}
