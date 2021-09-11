// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiClient.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'https://tdaacademy.in/tda_app/api/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<HomeModel> getHomeFeatureData(accetoken) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'Home/HomeFeaturesData',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = HomeModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<List<BlogMaster>> getAllBlog() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('blog',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => BlogMaster.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<PostMaster> getBlogPost(blogId) async {
    ArgumentError.checkNotNull(blogId, 'blogId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'blog/post/$blogId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = PostMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserMaster> userLogin(userMaster) async {
    ArgumentError.checkNotNull(userMaster, 'userMaster');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userMaster?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('user/login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = UserMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserMaster> userRegistration(userMaster) async {
    ArgumentError.checkNotNull(userMaster, 'userMaster');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userMaster?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('user/register',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = UserMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<List<CourseMaster>> getCourseList(accetoken) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('course',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => CourseMaster.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<UserMaster> getuserProfile(accetoken, userId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(userId, 'userId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('user/$userId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserMaster> updateUserProfile(accetoken, userMaster, userId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(userMaster, 'userMaster');
    ArgumentError.checkNotNull(userId, 'userId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userMaster?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('user/$userId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'PUT',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UserMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<List<CourseMaster>> getCourseListWithoutAuth() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('course/all',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => CourseMaster.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<QueryMaster>> getQueryByUserId(accetoken, courseId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(courseId, 'courseId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('query/user/$courseId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => QueryMaster.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<CourseMaster>> getMyCourseList(accetoken, courseId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(courseId, 'courseId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('user/courses/$courseId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => CourseMaster.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<SyllabusMaster>> getSyllabusList(accetoken, courseId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(courseId, 'courseId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>(
        'course/syllabus/$courseId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => SyllabusMaster.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<UserCourseMapping> saveUserCourse(accetoken, userId, courseId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(userId, 'userId');
    ArgumentError.checkNotNull(courseId, 'courseId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'user_id': userId, 'course_id': courseId};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('user/saveCourse',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = UserCourseMapping.fromJson(_result.data);
    return value;
  }

  @override
  Future<QueryMaster> saveUserQuery(accetoken, queryMaster) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(queryMaster, 'queryMaster');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(queryMaster?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('query',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = QueryMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<List<TestMaster>> getAllTest(accetoken) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('test/schedule',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => TestMaster.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<TestMaster> getAllQuestionsByTestId(accetoken, testId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(testId, 'testId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'test/questions/$testId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = TestMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<CourseMaster> hasCourseBought(accetoken, courseId, userId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(courseId, 'courseId');
    ArgumentError.checkNotNull(userId, 'userId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'course/hasBought/$courseId/$userId',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CourseMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<PaymentMaster> savePaymentInfo(
      accetoken,
      userName,
      address,
      courseId,
      city,
      state,
      zipCode,
      amount,
      userId,
      orderId,
      currency,
      transactionId,
      transactionDate,
      status,
      modeId) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(userName, 'userName');
    ArgumentError.checkNotNull(address, 'address');
    ArgumentError.checkNotNull(courseId, 'courseId');
    ArgumentError.checkNotNull(city, 'city');
    ArgumentError.checkNotNull(state, 'state');
    ArgumentError.checkNotNull(zipCode, 'zipCode');
    ArgumentError.checkNotNull(amount, 'amount');
    ArgumentError.checkNotNull(userId, 'userId');
    ArgumentError.checkNotNull(orderId, 'orderId');
    ArgumentError.checkNotNull(currency, 'currency');
    ArgumentError.checkNotNull(transactionId, 'transactionId');
    ArgumentError.checkNotNull(transactionDate, 'transactionDate');
    ArgumentError.checkNotNull(status, 'status');
    ArgumentError.checkNotNull(modeId, 'modeId');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {
      'user_name': userName,
      'address': address,
      'course_id': courseId,
      'city': city,
      'state': state,
      'zip_code': zipCode,
      'amount': amount,
      'user_id': userId,
      'order_id': orderId,
      'currency': currency,
      'transaction_id': transactionId,
      'transaction_date': transactionDate,
      'status': status,
      'mode_id': modeId
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('course/buy',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = PaymentMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<OtpMaster> forgotPasswordOtp(phoneNumber, otpMessage) async {
    ArgumentError.checkNotNull(phoneNumber, 'phoneNumber');
    ArgumentError.checkNotNull(otpMessage, 'otpMessage');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'number': phoneNumber,
      r'text': otpMessage
    };
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'http://37.59.76.46/api/mt/SendSMS?user=ADVITYA-SOLUTION&password=q12345&senderid=ADVITS&channel=trans&DCS=0&flashsms=0&{number}&{text}&route=2',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = OtpMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserMaster> forgotPassword(userMaster) async {
    ArgumentError.checkNotNull(userMaster, 'userMaster');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userMaster?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>(
        'user/forgotPassword',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = UserMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<UserMaster> verifyOtp(userMaster) async {
    ArgumentError.checkNotNull(userMaster, 'userMaster');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userMaster?.toJson() ?? <String, dynamic>{});
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('user/verifyOtp',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = UserMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<ImageMaster> uploadImage(
      accetoken, imageUrl, ownerId, ownerType) async {
    ArgumentError.checkNotNull(accetoken, 'accetoken');
    ArgumentError.checkNotNull(imageUrl, 'imageUrl');
    ArgumentError.checkNotNull(ownerId, 'ownerId');
    ArgumentError.checkNotNull(ownerType, 'ownerType');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'owner_id': ownerId, 'owner_type': ownerType};
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.request<Map<String, dynamic>>('image',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{r'Authorization': accetoken},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ImageMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<UtilityMaster> getBanners() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'utility/readBanner',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = UtilityMaster.fromJson(_result.data);
    return value;
  }

  @override
  Future<CaffairModel> getCurrentAffairs(page) async {
    ArgumentError.checkNotNull(page, 'page');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'page': page};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('caffair',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = CaffairModel.fromJson(_result.data);
    return value;
  }
}
