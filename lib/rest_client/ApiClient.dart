import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tda_academy/models/caffair/CaffairModel.dart';
import 'package:tda_academy/models/course/UserCourseMapping.dart';
import 'package:tda_academy/models/home/home_model.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/payment/PaymentMaster.dart';
import 'package:tda_academy/models/user/OtpMaster.dart';
import 'package:tda_academy/models/utility/UtilityMaster.dart';

import 'package:tda_academy/utils/constants.dart';
part 'ApiClient.g.dart';

@RestApi(baseUrl: api_url)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("Home/HomeFeaturesData")
  Future<HomeModel> getHomeFeatureData(
      @Header("Authorization") String accetoken);

  //get all blog list
  @GET("blog")
  Future<List<BlogMaster>> getAllBlog();

  //get all blog list
  @GET("blog/post/{blogId}")
  Future<PostMaster> getBlogPost(@Path("blogId") int blogId);

  @POST("user/login")
  @FormUrlEncoded()
  Future<UserMaster> userLogin(@Body() UserMaster userMaster);

  // user registration api
  @POST("user/register")
  @FormUrlEncoded()
  Future<UserMaster> userRegistration(@Body() UserMaster userMaster);

  @GET("course")
  Future<List<CourseMaster>> getCourseList(
      @Header("Authorization") String accetoken);

  @GET("user/{id}")
  Future<UserMaster> getuserProfile(
      @Header("Authorization") String accetoken, @Path("id") int userId);

  @PUT("user/{id}")
  Future<UserMaster> updateUserProfile(
      @Header("Authorization") String accetoken,
      @Body() UserMaster userMaster,
      @Path("id") int userId);

  @GET("course/all")
  Future<List<CourseMaster>> getCourseListWithoutAuth();

  //get all the query based on user id
  @GET("query/user/{userId}")
  Future<List<QueryMaster>> getQueryByUserId(
      @Header("Authorization") String accetoken, @Path("userId") int courseId);

  //get my course based on user Id
  @GET("user/courses/{userId}")
  Future<List<CourseMaster>> getMyCourseList(
      @Header("Authorization") String accetoken, @Path("userId") int courseId);

  @GET("course/syllabus/{courseId}")
  Future<List<SyllabusMaster>> getSyllabusList(
      @Header("Authorization") String accetoken,
      @Path("courseId") int courseId);

  @POST("user/saveCourse")
  @FormUrlEncoded()
  Future<UserCourseMapping> saveUserCourse(
      @Header("Authorization") String accetoken,
      @Field("user_id") int userId,
      @Field("course_id") int courseId);

//save user query
  @POST("query")
  @FormUrlEncoded()
  Future<QueryMaster> saveUserQuery(@Header("Authorization") String accetoken,
      @Body() QueryMaster queryMaster);

//get all test list
  @GET("test/schedule")
  Future<List<TestMaster>> getAllTest(
      @Header("Authorization") String accetoken);

  //get all questions list by test id
  @GET("test/questions/{testId}")
  Future<TestMaster> getAllQuestionsByTestId(
      @Header("Authorization") String accetoken, @Path("testId") int testId);

//check whether course has been bought or not
  @GET("course/hasBought/{courseId}/{userId}")
  Future<CourseMaster> hasCourseBought(
      @Header("Authorization") String accetoken,
      @Path("courseId") int courseId,
      @Path("userId") int userId);

//save payment info
  @POST("course/buy")
  @FormUrlEncoded()
  Future<PaymentMaster> savePaymentInfo(
      @Header("Authorization") String accetoken,
      @Field("user_name") String userName,
      @Field("address") String address,
      @Field("course_id") int courseId,
      @Field("city") String city,
      @Field("state") String state,
      @Field("zip_code") String zipCode,
      @Field("amount") double amount,
      @Field("user_id") int userId,
      @Field("order_id") String orderId,
      @Field("currency") String currency,
      @Field("transaction_id") String transactionId,
      @Field("transaction_date") String transactionDate,
      @Field("status") int status,
      @Field("mode_id") String modeId);

  /**
   * send forgot password otp
   */
  @GET(
      "http://37.59.76.46/api/mt/SendSMS?user=ADVITYA-SOLUTION&password=q12345&senderid=ADVITS&channel=trans&" +
          "DCS=0&flashsms=0&{number}&{text}&route=2")
  @FormUrlEncoded()
  Future<OtpMaster> forgotPasswordOtp(
      @Query("number") String phoneNumber, @Query("text") String otpMessage);

  // user forgot password api
  @POST("user/forgotPassword")
  @FormUrlEncoded()
  Future<UserMaster> forgotPassword(@Body() UserMaster userMaster);

  // user verify otp api
  @POST("user/verifyOtp")
  @FormUrlEncoded()
  Future<UserMaster> verifyOtp(@Body() UserMaster userMaster);

  @POST("image")
  @MultiPart()
  Future<ImageMaster> uploadImage(
      @Header("Authorization") String accetoken,
      @Part(fileName: "image_url") File imageUrl,
      @Field("owner_id") int ownerId,
      @Field("owner_type") String ownerType);

/**
 * get banner list
 */
  @GET("utility/readBanner")
  Future<UtilityMaster> getBanners();

  // get current affairs list
  @GET("caffair")
  Future<CaffairModel> getCurrentAffairs(@Query("page") int page);
  /*

  @POST("Account/SignUp")
  @FormUrlEncoded()
  Future<UserMaster> userRegistration(
      @Field("Uniquekey") String npi,
      @Field("Email") String email,
      @Field("PhoneNumber") String phoneNumber,
      @Field("FirstName") String firstName,
      @Field("MiddleName") String middleName,
      @Field("LastName") String lastName,
      @Field("Password") String password,
      @Field("UserType") int userType);

  @POST("Doctors")
  @FormUrlEncoded()
  Future<DoctorsModel> getDoctorsList(
      @Header("Authorization") String accessToken,
      @Field("StartIndex") int startIndex,
      @Field("PageSize") int pageSize);

  @POST("Profile/Facility/{orgId}")
  Future<FacilityModel> getFacilityProfileById(@Path("orgId") String orgId);

  

  @GET("Doctor/{id}")
  Future<DoctorsModel> getDoctorProfile(
      @Header("Authorization") String accetoken, @Path("id") int doctorId);
  // get doctor profile by npi
  @POST("Profile/Doctor/{npi}")
  Future<DoctorDetailModel> getDoctorProfileByNpi(
      @Header("Authorization") String accetoken, @Path("npi") String doctorId);

/**
 * Search:William
Latitude:0
Longitude:0
ANP:false
NTPA:false
PrimaryCare:false
Specialties:0
Language:0
PageIndex:0
PageSize:10
 */
  @POST("Home/SearchDoctors")
  @FormUrlEncoded()
  Future<SearchDoctorModel> searchDoctors(
      @Header("Authorization") String accessToken,
      @Field("Search") String searchString,
      @Field("Latitude") double latitude,
      @Field("Longitude") double longitude,
      @Field("ANP") bool anp,
      @Field("NTPA") bool ntpa,
      @Field("PrimaryCare") bool primaryCare,
      @Field("Specialties") int speciality,
      @Field("Language") int language,
      @Field("PageIndex") int pageIndex,
      @Field("PageSize") int pageSize);

  @POST("Home/SearchPharmacy")
  @FormUrlEncoded()
  Future<SearchPharmacyModel> searchPharmacy(
      @Header("Authorization") String accessToken,
      @Field("SearchBox") String searchString,
      @Field("PageIndex") pageIndex,
      @Field("PageSize") int pageSize,
      @Field("DistanceType") int distancetype,
      @Field("Latitude") double latitude,
      @Field("Longitude") double longitude);

  @POST("Home/SearchFacility")
  @FormUrlEncoded()
  Future<FacilitySearchModel> searchFacility(
      @Header("Authorization") String accessToken,
      @Field("SearchBox") String searchString,
      @Field("PageIndex") pageIndex,
      @Field("PageSize") int pageSize,
      @Field("DistanceType") int distancetype,
      @Field("Latitude") double latitude,
      @Field("Longitude") double longitude);

  @POST("Profile/Facility/{id}")
  @FormUrlEncoded()
  Future<FacilityDetailModel> loadFacility(
      @Header("Authorization") String accessToken,
      @Path("id") int organizationId);

  @POST("Profile/Pharmacy/{id}")
  @FormUrlEncoded()
  Future<PharmacyDetailModel> loadPharmacy(
      @Header("Authorization") String accessToken,
      @Path("id") int organizationId);

  @POST("Home/SearchSeniorCare")
  @FormUrlEncoded()
  Future<SearchSeniorCareDetail> searchSeniorCare(
      @Header("Authorization") String accessToken,
      @Field("SearchBox") String searchString,
      @Field("PageIndex") pageIndex,
      @Field("PageSize") int pageSize,
      @Field("DistanceType") int distancetype,
      @Field("Latitude") double latitude,
      @Field("Longitude") double longitude);

  @POST("Profile/SeniorCare/{id}")
  @FormUrlEncoded()
  Future<SeniorCareDetailModel> loadSeniorCare(
      @Header("Authorization") String accessToken,
      @Path("id") int organizationId);

  /**
   * Load user profile
   */
  @GET("Account/GetLoginUserDetails")
  Future<UserMaster> userProfile(@Query("email") String email);

  @GET("DoctorOpeningHours/{DoctorId}")
  Future<FacilityOpeningHourDetail> getDoctorOpeningHour(
      @Header("Authorization") String accetoken,
      @Path("DoctorId") int doctorId);

  @GET("DoctorBooking/InsuranceTypes")
  Future<InsuranceType> getInsuranceTypeList(
    @Header("Authorization") String accetoken,
  );

  @POST("DoctorBooking/InsurancePlanByType/{DoctorId}/{Id}")
  Future<InsurancePlan> getInsurancePlanList(
      @Header("Authorization") String accetoken,
      @Path("DoctorId") int doctorId,
      @Path("Id") int insuranceTypeId);

  //http://web.doctyme.com/api/InsurancePlans
  @GET("InsurancePlans")
  Future<InsurancePlan> getDefaultInsurancePlanList(
    @Header("Authorization") String accetoken,
  );

  @POST("DoctorBooking/save")
  @FormUrlEncoded()
  Future<DoctorsModel> saveDoctorBooking(
      @Header("Authorization") String accessToken,
      @Field("SlotDate") String slotDate,
      @Field("SlotTime") String slotTime,
      @Field("DoctorId") int doctorId,
      @Field("BookedFor") int bookedFor,
      @Field("IsEmailReminder") bool emailReminder,
      @Field("IsTextReminder") bool textReminder,
      @Field("IsInsuranceChanged") bool insuranceChanged,
      @Field("InsurancePlanId") int insurancePlanId,
      @Field("AddressId") int addressId,
      @Field("Description") String description,
      @Field("UserId") int userId,
      @Field("UserTypeID") int userTypeId);

  @POST("DoctorBooking/Address/{id}")
  Future<AddressDetailModel> getOrgAddressList(
    @Header("Authorization") String accetoken,
    @Path("id") int orgId,
  );

  @POST("SaveFacilityBooking/save")
  @FormUrlEncoded()
  Future<FacilityDetailModel> saveFacilityBooking(
      @Header("Authorization") String accessToken,
      @Field("SlotDate") String slotDate,
      @Field("SlotTime") String slotTime,
      @Field("OrganisationId") int orgId,
      @Field("BookedFor") int bookedFor,
      @Field("IsEmailReminder") bool emailReminder,
      @Field("IsTextReminder") bool textReminder,
      @Field("IsInsuranceChanged") bool insuranceChanged,
      @Field("InsurancePlanId") int insurancePlanId,
      @Field("AddressId") int addressId,
      @Field("Description") String description,
      @Field("UserId") int userId,
      @Field("UserTypeID") int usertypeId);

  @POST("SavePharmacyBooking/save")
  @FormUrlEncoded()
  Future<PharmacyDetailModel> savePharmacyBooking(
      @Header("Authorization") String accessToken,
      @Field("SlotDate") String slotDate,
      @Field("SlotTime") String slotTime,
      @Field("OrganisationId") int orgId,
      @Field("BookedFor") int bookedFor,
      @Field("IsEmailReminder") bool emailReminder,
      @Field("IsTextReminder") bool textReminder,
      @Field("IsInsuranceChanged") bool insuranceChanged,
      @Field("InsurancePlanId") int insurancePlanId,
      @Field("AddressId") int addressId,
      @Field("Description") String description,
      @Field("UserId") int userId,
      @Field("UserTypeID") int userTypeID);

  @POST("SeniorCareBooking/save")
  @FormUrlEncoded()
  Future<SeniorCareDetailModel> saveSeniorCareBooking(
      @Header("Authorization") String accessToken,
      @Field("SlotDate") String slotDate,
      @Field("SlotTime") String slotTime,
      @Field("OrganisationId") int orgId,
      @Field("BookedFor") int bookedFor,
      @Field("IsEmailReminder") bool emailReminder,
      @Field("IsTextReminder") bool textReminder,
      @Field("IsInsuranceChanged") bool insuranceChanged,
      @Field("InsurancePlanId") int insurancePlanId,
      @Field("AddressId") int addressId,
      @Field("Description") String description,
      @Field("UserId") int userId,
      @Field("UserTypeID") int userTypeId);

  @GET("DoctorBookingDetail/{id}")
  Future<BookingDModel> loadDoctorBookingDetail(
    @Header("Authorization") String accetoken,
    @Path("id") int id,
  );

//get all the bookings based on userId and userTypeID
  @POST("DoctorBookings/{Id}/{UserType}")
  Future<BookingDetailModel> loadBookingList(
    @Header("Authorization") String accetoken,
    @Path("Id") int userId,
    @Path("UserType") int userTypeId,
  );

  //get facility booking list
  @GET("GetFacilityBookingList/{id}")
  Future<BookingDetailModel> loadFacilityBookingList(
      @Header("Authorization") String accetoken, @Path("id") int userId);

  //get pharmacy booking list
  @GET("GetPharmacyBookingList/{id}")
  Future<BookingDetailModel> loadPharmacyBookingList(
      @Header("Authorization") String accetoken, @Path("id") int userId);

  //get seniorcare booking list
  @GET("GetSeniorCareBookingList/{id}")
  Future<BookingDetailModel> loadSeniorCareBookingList(
      @Header("Authorization") String accetoken, @Path("id") int userId);

  @GET("GetFacilityBookingDetail/{id}")
  Future<BookingDModel> loadFacilityBookingDetail(
    @Header("Authorization") String accetoken,
    @Path("id") int id,
  );

  @GET("GetPharmacyBookingDetail/{id}")
  Future<BookingDModel> loadPharmacyBookingDetail(
    @Header("Authorization") String accetoken,
    @Path("id") int id,
  );

  @GET("GetSeniorCareBookingDetail/{id}")
  Future<BookingDModel> loadSeniorCareBookingDetail(
    @Header("Authorization") String accetoken,
    @Path("id") int id,
  );

  //delete doctor booking detail
  @DELETE("DoctorBooking/{id}/remove")
  Future<MessageDetail> cancelBookingDetail(
      @Header("Authorization") String accetoken, @Path("id") int bookingId);

  //delete pharmacy booking detail
  @DELETE("DeletePharmacyBooking/{id}/remove")
  Future<MessageDetail> cancelPharmacyBookingDetail(
      @Header("Authorization") String accetoken, @Path("id") int bookingId);

  //delete facility booking detail
  @DELETE("DeleteFacilityBooking/{id}/remove")
  Future<MessageDetail> cancelFacilityBookingDetail(
      @Header("Authorization") String accetoken, @Path("id") int bookingId);

  //delete seniorcare booking detail
  @DELETE("SeniorCareBooking/{id}/remove")
  Future<MessageDetail> cancelSeniorCareBookingDetail(
      @Header("Authorization") String accetoken, @Path("id") int bookingId);
      */
}
