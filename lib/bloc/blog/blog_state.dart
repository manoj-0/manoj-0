part of 'blog_bloc.dart';

@immutable
abstract class BlogState extends Equatable {
  const BlogState();
}

class BlogInitializing extends BlogState {
  @override
  List<Object> get props => [];
}

class BlogLoading extends BlogState {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class BlogListLoaded extends BlogState {
  List<BlogMaster> blogMasterList;

  BlogListLoaded({@required this.blogMasterList});

  @override
  List<Object> get props => [blogMasterList];
}

//my course loaded state
class BlogPostLoaded extends BlogState {
  final PostMaster postMaster;

  BlogPostLoaded({@required this.postMaster});

  @override
  List<Object> get props => [postMaster];
}

// ignore: must_be_immutable
class BlogError extends BlogState {
  String message;
  BlogError({@required this.message});
  @override
  List<Object> get props => [message];
}
