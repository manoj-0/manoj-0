part of 'utility_bloc.dart';

@immutable
abstract class UtilityState extends Equatable {
  const UtilityState();
}

class UtilityInitializing extends UtilityState {
  @override
  List<Object> get props => [];
}

class UtilityLoading extends UtilityState {
  @override
  List<Object> get props => [];
}

class UtilityLoaded extends UtilityState {
  @override
  // TODO: implement props
  UtilityMaster utilityMaster;

  UtilityLoaded({@required this.utilityMaster});

  @override
  // TODO: implement props
  List<Object> get props => [utilityMaster];
}

class UtilityError extends UtilityLoaded {
  String message;
  UtilityError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
