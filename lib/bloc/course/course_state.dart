part of 'course_bloc.dart';

@immutable
abstract class CourseState extends Equatable {
  const CourseState();
}

class CourseInitializing extends CourseState {
  @override
  List<Object> get props => [];
}

class IsLoading extends CourseState {
  @override
  List<Object> get props => [];
}

class CourseLoaded extends CourseState {
  @override
  // TODO: implement props
  final List<CourseMaster> courseMasterList;

  CourseLoaded({@required this.courseMasterList});

  @override
  // TODO: implement props
  List<Object> get props => [courseMasterList];
}

class CourseError extends CourseState {
  String message;
  CourseError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}

// syllabus list loaded state
class SyllabusListByCourseIdLoaded extends CourseState {
  @override
  // TODO: implement props
  List<SyllabusMaster> syllabusMasterList;

  SyllabusListByCourseIdLoaded({@required this.syllabusMasterList});

  @override
  // TODO: implement props
  List<Object> get props => [syllabusMasterList];
}

//my course loaded state
class MyCourseLoaded extends CourseState {
  @override
  // TODO: implement props
  final List<CourseMaster> courseMasterList;

  MyCourseLoaded({@required this.courseMasterList});

  @override
  // TODO: implement props
  List<Object> get props => [courseMasterList];
}

//save user course
//my course loaded state
class UserCourseSaved extends CourseState {
  @override
  // TODO: implement props
  final UserCourseMapping userCourseMapping;

  UserCourseSaved({@required this.userCourseMapping});

  @override
  // TODO: implement props
  List<Object> get props => [userCourseMapping];
}

//make payement state
//my course loaded state
class CourseBought extends CourseState {
  @override
  // TODO: implement props
  final PaymentMaster paymentMaster;

  CourseBought({@required this.paymentMaster});

  @override
  // TODO: implement props
  List<Object> get props => [paymentMaster];
}

//query saved state
class QuerySaved extends CourseState {
  @override
  // TODO: implement props
  final QueryMaster queryMaster;

  QuerySaved({@required this.queryMaster});

  @override
  // TODO: implement props
  List<Object> get props => [queryMaster];
}

//has coourse bought
//my course loaded state
class HasCourseBought extends CourseState {
  @override
  // TODO: implement props
  final CourseMaster courseMaster;

  HasCourseBought({@required this.courseMaster});

  @override
  // TODO: implement props
  List<Object> get props => [courseMaster];
}
