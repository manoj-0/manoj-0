import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/resources/test/test_repository.dart';
import 'package:tda_academy/resources/user/user_repository.dart';
import 'package:tda_academy/rest_client/ApiClient.dart';

class TestRepositoryImpl implements TestRepository {
  Dio dio;
  ApiClient apiClient;
  TestRepositoryImpl() {
    dio = new Dio();
    //dio.options.headers["Content-Type"] = "application/json";
    dio.interceptors.add(PrettyDioLogger());
    apiClient = new ApiClient(dio);
  }

  @override
  Future<BaseModel<List<TestMaster>>> getTestList(String accessToken) async {
    List<TestMaster> testMasterList;
    try {
      testMasterList = await apiClient.getAllTest("Bearer " + accessToken);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = testMasterList;
  }

  @override
  Future<BaseModel<TestMaster>> getQuestionstList(
      String accessToken, int testId) async {
    TestMaster testMasterList;
    try {
      testMasterList = await apiClient.getAllQuestionsByTestId(
          "Bearer " + accessToken, testId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = testMasterList;
  }
}
