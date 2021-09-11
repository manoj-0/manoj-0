import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:tda_academy/models/BaseModel.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/blog/blog_master.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/rest_client/ApiClient.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';

import 'blog_repository.dart';

class BlogRepositoryImpl implements BlogRepository {
  Dio dio;
  ApiClient apiClient;
  String accessToken =
      PreferenceUtils.getString(access_token, defValue: def_val_sf);
  BlogRepositoryImpl() {
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
  Future<BaseModel<List<BlogMaster>>> getBlogList() async {
    List<BlogMaster> blogList;
    try {
      blogList = await apiClient.getAllBlog();
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = blogList;
  }

  @override
  Future<BaseModel<PostMaster>> getBlogPost(int blogId) async {
    PostMaster postMaster;
    try {
      print("${blogId} in repository");
      postMaster = await apiClient.getBlogPost(blogId);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      print(error.toString());
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = postMaster;
  }
}
