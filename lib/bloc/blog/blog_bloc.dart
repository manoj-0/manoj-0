import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/resources/blog/blog_repository.dart';
import 'package:tda_academy/resources/blog/blog_repositoryimpl.dart';
part 'blog_event.dart';
part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  BlogRepository blogRepository = new BlogRepositoryImpl();

  BlogBloc() : super(BlogInitializing());
  @override
  Stream<BlogState> mapEventToState(
    BlogEvent event,
  ) async* {
    if (event is LoadBlogListEvent) {
      yield* _mapBlogListToState(event);
    }
    if (event is LoadBlogPostEvent) {
      yield* _mapBlogPostToState(event);
    }
  }

  Stream<BlogState> _mapBlogPostToState(LoadBlogPostEvent event) async* {
    BaseModel<PostMaster> postMaster;
    yield BlogLoading();
    try {
      postMaster = await blogRepository.getBlogPost(event.blogId);

      if (postMaster.getException != null) {
        ServerError _error = postMaster.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield BlogError(message: _error.getErrorMessage());
      } else {
        yield BlogPostLoaded(postMaster: postMaster.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = postMaster.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield BlogError(message: _error.getErrorMessage());
    }
  }

  Stream<BlogState> _mapBlogListToState(LoadBlogListEvent event) async* {
    BaseModel<List<BlogMaster>> blogMasterList;
    yield BlogLoading();
    try {
      blogMasterList = await blogRepository.getBlogList();

      if (blogMasterList.getException != null) {
        ServerError _error = blogMasterList.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield BlogError(message: _error.getErrorMessage());
      } else {
        yield BlogListLoaded(blogMasterList: blogMasterList.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = blogMasterList.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield BlogError(message: _error.getErrorMessage());
    }
  }

  @override

  // ignore: override_on_non_overriding_member
  BlogState get initialState => BlogLoading();
}
