part of 'blog_bloc.dart';

@immutable
abstract class BlogEvent extends Equatable {
  const BlogEvent();
}

class LoadBlogListEvent extends BlogEvent {
  const LoadBlogListEvent();
  @override
  List<Object> get props => [];
}

class LoadBlogPostEvent extends BlogEvent {
  final int blogId;
  const LoadBlogPostEvent({@required this.blogId});
  @override
  List<Object> get props => [];
}
