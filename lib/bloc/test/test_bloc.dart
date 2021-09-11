import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/resources/query/query_repository.dart';
import 'package:tda_academy/resources/query/query_repositoryImpl.dart';
import 'package:tda_academy/resources/test/test_repository.dart';
import 'package:tda_academy/resources/test/test_repositoryimpl.dart';
part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestRepository testRepository = new TestRepositoryImpl();

  TestBloc() : super(TestInitializing());
  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    if (event is LoadAllTestEvent) {
      yield* _mapLoadTestListToState(event);
    }
    if (event is LoadAllQuestionEvent) {
      yield* _mapLoadQuestionsListToState(event);
    }
  }

  /**
   * get all questions
   * 
   */
  Stream<TestState> _mapLoadQuestionsListToState(
      LoadAllQuestionEvent event) async* {
    BaseModel<TestMaster> testMaster;
    yield TestLoading();
    try {
      testMaster = await testRepository.getQuestionstList(
          event.accessToken, event.testId);

      if (testMaster.getException != null) {
        ServerError _error = testMaster.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield TestError(message: _error.getErrorMessage());
      } else {
        yield TestQuestionsLoaded(testMaster: testMaster.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      print(" data not found" + e.toString());
      ServerError _error = testMaster.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield TestError(message: _error.getErrorMessage());
    }
  }

/**
   * get all test
   * 
   */
  Stream<TestState> _mapLoadTestListToState(LoadAllTestEvent event) async* {
    BaseModel<List<TestMaster>> testMaster;
    yield TestLoading();
    try {
      testMaster = await testRepository.getTestList(event.accessToken);

      if (testMaster.getException != null) {
        ServerError _error = testMaster.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield TestError(message: _error.getErrorMessage());
      } else {
        yield TestListLoaded(testMaster: testMaster.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      print(" data not found" + e.toString());
      ServerError _error = testMaster.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield TestError(message: _error.getErrorMessage());
    }
  }
}
