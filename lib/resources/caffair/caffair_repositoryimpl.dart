import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tda_academy/models/BaseModel.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/blog/blog_master.dart';
import 'package:tda_academy/models/caffair/CaffairModel.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/rest_client/ApiClient.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';

import 'caffair_repository.dart';

class CaffairRepositoryImpl implements CaffairRepository {
  Dio dio;
  ApiClient apiClient;
  String accessToken =
      PreferenceUtils.getString(access_token, defValue: def_val_sf);
  CaffairRepositoryImpl() {
    dio = new Dio();
    //dio.options.headers["Content-Type"] = "application/json";
    dio.interceptors.add(PrettyDioLogger());
    /*dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options){
      options.headers["Authorization"] = "Bearer " + accessToken;
      return options;
    },
        onResponse: (Response response){},
        onError: (DioError error){}) );*/
    apiClient = new ApiClient(dio);
  }

  @override
  Future<BaseModel<CaffairModel>> getCaffairList(int pageNumber) async {
    CaffairModel blogList;
    try {
      blogList = await apiClient.getCurrentAffairs(pageNumber);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = blogList;
  }
}
