import 'package:tda_academy/models/course/UserCourseMapping.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/payment/PaymentMaster.dart';

abstract class CourseRepository {
  Future<BaseModel<List<CourseMaster>>> getCourseList(String accessToken);

  Future<BaseModel<List<SyllabusMaster>>> getSyllabusList(
      String accessToken, int courseId);

  //load my course based on user id
  Future<BaseModel<List<CourseMaster>>> getMyCourseList(
      String accessToken, int userId);

  //save user course
  Future<BaseModel<UserCourseMapping>> saveUserCourse(
      String accessToken, int userId, int courseId);

//save user query
  Future<BaseModel<QueryMaster>> saveUserQuery(
      String accessToken, QueryMaster queryMaster);

//has course bought
  Future<BaseModel<CourseMaster>> hasCourseBought(
      String accessToken, int courseId, int userId);

  //save payment info
  Future<BaseModel<PaymentMaster>> savePaymentInfo(
      String accessToken,
      String userName,
      String address,
      int courseId,
      String city,
      String state,
      String zipCode,
      double amount,
      int userId,
      String orderId,
      String currency,
      String transactionDate,
      String transactionId,
      int status,
      String modeId);
}
