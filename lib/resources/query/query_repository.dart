import 'package:tda_academy/models/model_barrel.dart';

abstract class QueryRepository {
  Future<BaseModel<List<QueryMaster>>> getQueryListByUserId(
      String accessToken, int userId);
}
