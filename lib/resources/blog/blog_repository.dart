import 'package:tda_academy/models/model_barrel.dart';

abstract class BlogRepository {
  Future<BaseModel<List<BlogMaster>>> getBlogList();
  Future<BaseModel<PostMaster>> getBlogPost(int blogId);
}
