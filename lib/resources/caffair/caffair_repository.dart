import 'package:tda_academy/models/caffair/CaffairModel.dart';
import 'package:tda_academy/models/model_barrel.dart';

abstract class CaffairRepository {
  Future<BaseModel<CaffairModel>> getCaffairList(int pageNumber);
}
