part of 'caffair_bloc.dart';

@immutable
abstract class CaffairState extends Equatable {
  const CaffairState();
}

class CaffairInitializing extends CaffairState {
  @override
  List<Object> get props => [];
}

class CaffairLoading extends CaffairState {
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class CaffairListLoaded extends CaffairState {
  CaffairModel caffairList;

  CaffairListLoaded({@required this.caffairList});

  @override
  List<Object> get props => [caffairList];
}

// ignore: must_be_immutable
class CaffairError extends CaffairState {
  String message;
  CaffairError({@required this.message});
  @override
  List<Object> get props => [message];
}
