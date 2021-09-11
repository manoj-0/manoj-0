import 'package:dio/dio.dart';
import 'package:tda_academy/models/BaseModel.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/home/home_model.dart';
import 'package:tda_academy/rest_client/ApiClient.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';

import 'home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  Dio dio;
  ApiClient apiClient;
  String accessToken =
      PreferenceUtils.getString(access_token, defValue: def_val_sf);
  HomeRepositoryImpl() {
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
  Future<BaseModel<HomeModel>> getHomeFeed(String accessToken) async {
    HomeModel homeModel;
    try {
      homeModel = await apiClient.getHomeFeatureData("Bearer " + accessToken);
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

    return BaseModel()..data = homeModel.homeModel;
  }
}
