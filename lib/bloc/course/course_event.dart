part of 'course_bloc.dart';

@immutable
abstract class CourseEvent extends Equatable {
  const CourseEvent();
}

class LoadCourseEvent extends CourseEvent {
  final String accessToken;
  const LoadCourseEvent({@required this.accessToken});
  @override
  List<Object> get props => [];
}

class LoadSyllabusByCourseIdEvent extends CourseEvent {
  final String accessToken;
  final int courseId;
  const LoadSyllabusByCourseIdEvent({
    @required this.accessToken,
    @required this.courseId,
  });
  @override
  List<Object> get props => [];
}

//event to check whether course is bought or not
class HasCourseBoughtEvent extends CourseEvent {
  final String accessToken;
  final int courseId;
  final int userId;
  const HasCourseBoughtEvent(
      {@required this.accessToken,
      @required this.courseId,
      @required this.userId});
  @override
  List<Object> get props => [];
}

class LoadMyCourseEvent extends CourseEvent {
  final String accessToken;
  final int userId;
  const LoadMyCourseEvent({
    @required this.accessToken,
    @required this.userId,
  });
  @override
  List<Object> get props => [];
}

/*
 * save user course event
 */
class SaveUserCourse extends CourseEvent {
  final String accessToken;
  final int userId;
  final int courseId;
  const SaveUserCourse({
    @required this.accessToken,
    @required this.userId,
    @required this.courseId,
  });
  @override
  List<Object> get props => [];
}

//save payment info
class SavePaymentInfo extends CourseEvent {
  final String accessToken;
  final String userName;
  final String address;
  final int courseId;
  final String city;
  final String state;
  final String zipCode;
  final double amount;
  final int userId;
  final String orderId;
  final String currency;
  final String transactionDate;
  final String transactionId;
  final int status;
  final String modeId;

  const SavePaymentInfo(
      {@required this.accessToken,
      @required this.userName,
      @required this.address,
      @required this.courseId,
      @required this.city,
      @required this.state,
      @required this.zipCode,
      @required this.amount,
      @required this.userId,
      @required this.orderId,
      @required this.currency,
      @required this.transactionDate,
      @required this.transactionId,
      @required this.status,
      @required this.modeId});
  @override
  List<Object> get props => [];
}

/*
 * save user course event
 */
class SaveQuery extends CourseEvent {
  final String accessToken;
  final QueryMaster queryMaster;
  const SaveQuery({
    @required this.accessToken,
    @required this.queryMaster,
  });
  @override
  List<Object> get props => [];
}
