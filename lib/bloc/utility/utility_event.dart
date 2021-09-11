part of 'utility_bloc.dart';

@immutable
abstract class UtilityEvent extends Equatable {
  const UtilityEvent();
}

class UtilityLoadingEvent extends UtilityEvent {
  const UtilityLoadingEvent();
  @override
  List<Object> get props => [];
}
