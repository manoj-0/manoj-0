part of 'query_bloc.dart';

@immutable
abstract class QueryState extends Equatable {
  const QueryState();
}

class QueryInitializing extends QueryState {
  @override
  List<Object> get props => [];
}

class QueryLoading extends QueryState {
  @override
  List<Object> get props => [];
}

class UserQueryLoaded extends QueryState {
  @override
  // TODO: implement props
  final List<QueryMaster> queryMaster;

  UserQueryLoaded({@required this.queryMaster});

  @override
  // TODO: implement props
  List<Object> get props => [queryMaster];
}

class QueryError extends QueryState {
  String message;
  QueryError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
