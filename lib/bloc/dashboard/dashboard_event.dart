part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent extends Equatable {
  const DashboardEvent();
}

class LoadDashboardEvent extends DashboardEvent {
  final String accessToken;
  const LoadDashboardEvent({@required this.accessToken});
  @override
  List<Object> get props => [];
}
