import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/course/UserCourseMapping.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/payment/PaymentMaster.dart';
import 'package:tda_academy/resources/course/course_repository.dart';
import 'package:tda_academy/resources/course/course_repositoryImpl.dart';
part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseRepository courseRepository = new CourseRepositoryImpl();

  CourseBloc() : super(CourseInitializing());
  @override
  Stream<CourseState> mapEventToState(
    CourseEvent event,
  ) async* {
    if (event is LoadCourseEvent) {
      yield* _mapLoadCourseListToState(event);
    }
    if (event is LoadSyllabusByCourseIdEvent) {
      yield* _mapLoadSyllabusListByCourseIdToState(event);
    }

    if (event is LoadMyCourseEvent) {
      yield* _mapLoadMyCourseToState(event);
    }

    if (event is SaveUserCourse) {
      yield* _mapSaveUserCourseToState(event);
    }

    if (event is SavePaymentInfo) {
      yield* _mapSavePaymentInfoToState(event);
    }

    if (event is SaveQuery) {
      yield* _mapSaveQueryToState(event);
    }
    if (event is HasCourseBoughtEvent) {
      yield* _mapHasCourseBoughtState(event);
    }
  }

  Stream<CourseState> _mapHasCourseBoughtState(
      HasCourseBoughtEvent event) async* {
    BaseModel<CourseMaster> courseMaster;
    yield IsLoading();
    try {
      courseMaster = await courseRepository.hasCourseBought(
          event.accessToken, event.courseId, event.userId);

      if (courseMaster.getException != null) {
        ServerError _error = courseMaster.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield CourseError(message: _error.getErrorMessage());
      } else {
        yield HasCourseBought(courseMaster: courseMaster.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = courseMaster.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield CourseError(message: _error.getErrorMessage());
    }
  }

/*
   * save user query
   * 
   */
  Stream<CourseState> _mapSaveQueryToState(SaveQuery event) async* {
    BaseModel<QueryMaster> queryMaster;
    yield IsLoading();
    try {
      queryMaster = await courseRepository.saveUserQuery(
          event.accessToken, event.queryMaster);

      if (queryMaster.getException != null) {
        ServerError _error = queryMaster.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield CourseError(message: _error.getErrorMessage());
      } else {
        yield QuerySaved(queryMaster: queryMaster.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = queryMaster.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield CourseError(message: _error.getErrorMessage());
    }
  }

  /*
   * save payment info
   * 
   */
  Stream<CourseState> _mapSavePaymentInfoToState(SavePaymentInfo event) async* {
    BaseModel<PaymentMaster> paymentMaster;
    yield IsLoading();
    try {
      paymentMaster = await courseRepository.savePaymentInfo(
          event.accessToken,
          event.userName,
          event.address,
          event.courseId,
          event.city,
          event.state,
          event.zipCode,
          event.amount,
          event.userId,
          event.orderId,
          event.currency,
          event.transactionDate,
          event.transactionId,
          event.status,
          event.modeId);

      if (paymentMaster.getException != null) {
        ServerError _error = paymentMaster.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield CourseError(message: _error.getErrorMessage());
      } else {
        yield CourseBought(paymentMaster: paymentMaster.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = paymentMaster.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield CourseError(message: _error.getErrorMessage());
    }
  }

  /*
   * save user course
   */
  Stream<CourseState> _mapSaveUserCourseToState(SaveUserCourse event) async* {
    BaseModel<UserCourseMapping> userCourseMapping;
    yield IsLoading();
    try {
      userCourseMapping = await courseRepository.saveUserCourse(
          event.accessToken, event.userId, event.courseId);

      if (userCourseMapping.getException != null) {
        ServerError _error = userCourseMapping.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield CourseError(message: _error.getErrorMessage());
      } else {
        yield UserCourseSaved(userCourseMapping: userCourseMapping.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = userCourseMapping.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield CourseError(message: _error.getErrorMessage());
    }
  }

  Stream<CourseState> _mapLoadCourseListToState(LoadCourseEvent event) async* {
    BaseModel<List<CourseMaster>> courseMasterList;
    yield IsLoading();
    try {
      courseMasterList =
          await courseRepository.getCourseList(event.accessToken);

      if (courseMasterList.getException != null) {
        ServerError _error = courseMasterList.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield CourseError(message: _error.getErrorMessage());
      } else {
        yield CourseLoaded(courseMasterList: courseMasterList.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = courseMasterList.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield CourseError(message: _error.getErrorMessage());
    }
  }

  CourseState get initialState => IsLoading();

  /*
   * load syllabus list by course id state
   */
  Stream<CourseState> _mapLoadSyllabusListByCourseIdToState(
      LoadSyllabusByCourseIdEvent event) async* {
    BaseModel<List<SyllabusMaster>> syllabusMasterList;
    yield IsLoading();
    try {
      syllabusMasterList = await courseRepository.getSyllabusList(
          event.accessToken, event.courseId);

      if (syllabusMasterList.getException != null) {
        ServerError _error = syllabusMasterList.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield CourseError(message: _error.getErrorMessage());
      } else {
        yield SyllabusListByCourseIdLoaded(
            syllabusMasterList: syllabusMasterList.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = syllabusMasterList.getException;
      print(_error.getErrorMessage() + " avinash" + e.toString());
      yield CourseError(message: _error.getErrorMessage());
    }
  }

  /*
   * load my course based on user Id
   */
  Stream<CourseState> _mapLoadMyCourseToState(LoadMyCourseEvent event) async* {
    BaseModel<List<CourseMaster>> courseMasterList;
    yield IsLoading();
    try {
      courseMasterList = await courseRepository.getMyCourseList(
          event.accessToken, event.userId);

      if (courseMasterList.getException != null) {
        ServerError _error = courseMasterList.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield CourseError(message: _error.getErrorMessage());
      } else {
        yield MyCourseLoaded(courseMasterList: courseMasterList.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = courseMasterList.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield CourseError(message: _error.getErrorMessage());
    }
  }
}
