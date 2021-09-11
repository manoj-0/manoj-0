import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:tda_academy/rest_client/ApiClient.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';

import 'query_repository.dart';

class QueryRepositoryImpl implements QueryRepository {
  Dio dio;
  ApiClient apiClient;
  String accessToken =
      PreferenceUtils.getString(access_token, defValue: def_val_sf);
  QueryRepositoryImpl() {
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
  Future<BaseModel<List<QueryMaster>>> getQueryListByUserId(
      String accessToken, int userId) async {
    List<QueryMaster> queryMaster;
    //load data from http
    try {
      queryMaster =
          await apiClient.getQueryByUserId("Bearer " + accessToken, userId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }

    //load data from local json file

    // var response = await rootBundle.loadString('assets/json/demo.json');

    // try {
    //   queryMaster = (json.decode(response) as List)
    //       .map((data) => QueryMaster.fromJson(data))
    //       .toList();

    //   //return products;
    // } catch (e) {
    //   throw Exception('Error loading json');
    // }

    return BaseModel()..data = queryMaster;
  }
}
