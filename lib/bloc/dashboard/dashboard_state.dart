part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardState extends Equatable {
  const DashboardState();
}

class DashboardInitializing extends DashboardState {
  @override
  List<Object> get props => [];
}

class DashboardLoading extends DashboardState {
  @override
  List<Object> get props => [];
}

class DashboardLoaded extends DashboardState {
  @override
  // TODO: implement props
  List<CourseMaster> courseMasterList;

  DashboardLoaded({@required this.courseMasterList});

  @override
  // TODO: implement props
  List<Object> get props => [courseMasterList];
}

class DashboardError extends DashboardState {
  String message;
  DashboardError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
