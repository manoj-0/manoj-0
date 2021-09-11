import 'package:tda_academy/models/model_barrel.dart';

abstract class TestRepository {
  Future<BaseModel<List<TestMaster>>> getTestList(String accessToken);
  Future<BaseModel<TestMaster>> getQuestionstList(
      String accessToken, int testId);
}
