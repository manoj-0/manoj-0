part of 'test_bloc.dart';

@immutable
abstract class TestState extends Equatable {
  const TestState();
}

class TestInitializing extends TestState {
  @override
  List<Object> get props => [];
}

class TestLoading extends TestState {
  @override
  List<Object> get props => [];
}

class TestListLoaded extends TestState {
  @override
  // TODO: implement props
  final List<TestMaster> testMaster;

  TestListLoaded({@required this.testMaster});

  @override
  // TODO: implement props
  List<Object> get props => [testMaster];
}

class TestQuestionsLoaded extends TestState {
  @override
  // TODO: implement props
  final TestMaster testMaster;

  TestQuestionsLoaded({@required this.testMaster});

  @override
  // TODO: implement props
  List<Object> get props => [testMaster];
}

class TestError extends TestState {
  String message;
  TestError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class QuestionOptionsLoaded extends TestState {
  @override
  // TODO: implement props
  final QuestionsMaster questionsMaster;

  QuestionOptionsLoaded({@required this.questionsMaster});

  @override
  // TODO: implement props
  List<Object> get props => [questionsMaster];
}
