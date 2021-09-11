part of 'test_bloc.dart';

@immutable
abstract class TestEvent extends Equatable {
  const TestEvent();
}

class LoadAllTestEvent extends TestEvent {
  final String accessToken;
  const LoadAllTestEvent({@required this.accessToken});
  @override
  List<Object> get props => [];
}

class LoadAllQuestionEvent extends TestEvent {
  final String accessToken;
  final int testId;
  const LoadAllQuestionEvent(
      {@required this.accessToken, @required this.testId});
  @override
  List<Object> get props => [];
}

class RenderOptionEvent extends TestEvent {
  final QuestionsMaster questionsMaster;
  const RenderOptionEvent({@required this.questionsMaster});
  @override
  List<Object> get props => [];
}
