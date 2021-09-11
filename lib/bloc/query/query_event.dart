part of 'query_bloc.dart';

@immutable
abstract class QueryEvent extends Equatable {
  const QueryEvent();
}

class LoadQueryByUserIdEvent extends QueryEvent {
  final String accessToken;
  final int userId;
  const LoadQueryByUserIdEvent(
      {@required this.accessToken, @required this.userId});
  @override
  List<Object> get props => [];
}
