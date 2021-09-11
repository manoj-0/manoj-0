import 'package:flutter/material.dart';
import 'package:tda_academy/models/course/CourseMaster.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/QuizExamScreen.dart';
import 'package:tda_academy/screens/dashboard.dart';
import 'package:tda_academy/screens/faq/faq.dart';
import 'package:tda_academy/screens/materials/material_queries.dart';
import 'package:tda_academy/screens/navigation_bar/blogs/blog_detail.dart';
import 'package:tda_academy/screens/navigation_bar/course/checkout.dart';
import 'package:tda_academy/screens/navigation_bar/course/course_detail.dart';
import 'package:tda_academy/screens/navigation_bar/course/material_view.dart';
import 'package:tda_academy/screens/navigation_bar/course/my_course/my_course_detail.dart';
import 'package:tda_academy/screens/navigation_bar/current_affairs/current_affairs.dart';
import 'package:tda_academy/screens/navigation_bar/practice/practice_list.dart';
import 'package:tda_academy/screens/payments/buy_course.dart';
import 'package:tda_academy/screens/user/forgot_password.dart';
import 'package:tda_academy/screens/user/otp_page.dart';
import 'package:tda_academy/utils/constants.dart';

import 'screens/navigation_bar/current_affairs/caffair_detail.dart';
import 'screens/screens_barrel.dart';
import 'widget/SlideRightRoute.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    print(args.toString());
    switch (settings.name) {
      case homeRoute:
        //Welcome()
        return SlideRightRoute(page: Welcome());
      case dashboardRoute:
        return SlideRightRoute(
            page: Dashboard(
          userMaster: args,
        ));
      case allCourse:
        return SlideRightRoute(page: Courses());
      case loginRoute:
        return SlideRightRoute(page: LoginPage());
      case courseDetail:
        return SlideRightRoute(
            page: CourseDetail(
          courseMaster: args,
        ));

      //mycourseDetail
      case mycourseDetail:
        return SlideRightRoute(
            page: MyCourseDetail(
          courseMaster: args,
        ));

      //buy now course
      case buycourse:
        return SlideRightRoute(
          page: BuyCourse(
            courseMaster: null,
            userMaster: null,
          ),
        );

      case viewMaterial:
        CourseMaster courseMaster;
        MaterialMaster materialMaster;
        SyllabusMaster syllabusMaster;
        if (args is Map) {
          courseMaster = args['courseMaster'];
          materialMaster = args['materialMaster'];
          syllabusMaster = args['syllabusMaster'];
        }
        return SlideRightRoute(
            page: MaterialView(
          materialMaster: materialMaster,
          courseMaster: courseMaster,
          syllabusMaster: syllabusMaster,
        ));
      case viewMaterialQueries:
        CourseMaster courseMaster;
        MaterialMaster materialMaster;
        SyllabusMaster syllabusMaster;
        if (args is Map) {
          courseMaster = args['courseMaster'];
          materialMaster = args['materialMaster'];
          syllabusMaster = args['syllabusMaster'];
        }
        return SlideRightRoute(
            page: MaterialQuery(
          materialMaster: materialMaster,
          courseMaster: courseMaster,
          syllabusMaster: syllabusMaster,
        ));

      //registeration route
      case registerRoute:
        return SlideRightRoute(page: Registration());

      //edit profile route
      case editProfile:
        return SlideRightRoute(
          page: EditProfile(
            userMaster: args,
          ),
        );

      case faq:
        return SlideRightRoute(page: Faq());

      case caffairs:
        return SlideRightRoute(page: CurrentAffairs());
      case caffairDetail:
        return SlideRightRoute(
            page: CaffairDetail(
          caffairModel: args,
        ));

      //open test detail screen
      case testDetail:
        return SlideRightRoute(
          page: QuizExamScreen(
            testMaster: args,
          ),
        );
      case blogPost:
        return SlideRightRoute(
            page: BlogDetail(
          blogMaster: args,
        ));

      case resultRoute:
        int totalQuestion;
        int correctAnswer;
        if (args is Map) {
          totalQuestion = args['total_question'];
          correctAnswer = args['correct_answer'];
        }
        return SlideRightRoute(
            page: QuizResult(
                questionCount: totalQuestion, correctAnswer: correctAnswer));

      case testList:
        return SlideRightRoute(page: PracticeList());

      case checkout:
        return SlideRightRoute(
            page: Checkout(
          courseMaster: args,
        ));
      case forgotpassword:
        return SlideRightRoute(page: ForgotPassword());
      case verificationRoute:
        return SlideRightRoute(
            page: OtpPage(
          userMaster: args,
        ));
      //
//
      /*
  
      

      case chatRoute:
        return SlideRightRoute(page: ChatWidget());

      case doctorsRoute:
        return SlideRightRoute(
            page: DoctorsList(
          testing: args,
        ));

      case doctorProfilRoute:
        int doctorId = 0;
        String npi = "";
        if (args is DoctorsModel) {
          doctorId = args.doctorId;
          npi = args.nPI;
        }
        if (args is SearchDoctorModel) {
          doctorId = args.doctorId;
          npi = args.npi;
        }
        if (args is FeatureDoctorModel) {
          doctorId = args.doctorId;
          npi = args.npi;
        }
        return SlideRightRoute(
            page: DoctorAcount(doctorId: doctorId, npi: npi));

      case facilityProfilRoute:
        int organizaionId = 0;
        if (args is FeatureFacilityModel) {
          organizaionId = args.organisationId;
        }
        if (args is FacilitySearchModel) {
          organizaionId = args.organisationId;
        }

        return SlideRightRoute(
            page: FacilityDetail(
          organizationId: organizaionId,
        ));

      case seniorCareProfilRoute:
        int organizaionId = 0;
        /* if (args is FeatureSpecialityModel) {
          organizaionId = args.;
        } */
        if (args is SearchSeniorCareDetail) {
          organizaionId = args.organisationId;
        }
        return SlideRightRoute(
            page: SeniorCareDetail(
          organizationId: organizaionId,
        ));

      case pharmacyProfilRoute:
        return SlideRightRoute(
            page: PharmacyDetail(
          searchPharmacyModel: args,
        ));

      case firstDoctorBookRoute:
        DoctorDetailModel doctorDetailModel;
        List<FacilityOpeningHourDetail> facilityOpeningHour;
        if (args is Map) {
          doctorDetailModel = args['doctorModel'];
          facilityOpeningHour = args['doctorOpeningHour'];
        }
        return SlideRightRoute(
            page: DoctorBookFirstStep(
          doctorDetailModel: doctorDetailModel,
          facilityOpeningHour: facilityOpeningHour,
        ));

      case firstFacilityBookRoute:
        return SlideRightRoute(
            page: FacilityBookFirstStep(
          facilityDetailModel: args,
        ));

      case firstPharmacyBookRoute:
        return SlideRightRoute(
            page: PharmacyBookFirstStep(
          pharmacyDetailModel: args,
        ));

      case firstSeniorCareBookRoute:
        return SlideRightRoute(
            page: SeniorCareFirstStep(
          seniorCareDetailModel: args,
        ));

      case secondeDoctorBookRoute:
        return SlideRightRoute(page: DoctorBookSecondeStep());

      case offersRoute:
        return SlideRightRoute(page: OffersList());
      /* case bookTestRoute:
        return SlideRightRoute(page: BookTestsOnline()); */

      case bookTestRoute:
        return SlideRightRoute(page: FacilitySearchList());

      case seniorCareRoute:
        return SlideRightRoute(page: SeniorCareSearchList());

      case secondeBookTestRoute:
        return SlideRightRoute(page: BookTestsOnlineSecondeStep());

      case thirdBookTestRoute:
        return SlideRightRoute(page: BookTestsOnlineThirdStep());

      case fourthBookTestRoute:
        return SlideRightRoute(page: BookTestsOnlineFourthStep());
      /* case medecinesRoute:
        return SlideRightRoute(page: Medecines()); */

      case medecinesRoute:
        return SlideRightRoute(page: PharmacySearchList());

      case medecinesSecondeRoute:
        return SlideRightRoute(page: MedecinesSlected());

      case mydoctorsRoute:
        return SlideRightRoute(page: MyDoctorsList());

      case appointmentRoute:
        return SlideRightRoute(page: AppointmentsList());

      //doctor pending bookng list
      case bookingsRoute:
        return SlideRightRoute(page: BookingList());

      case healthRoute:
        return SlideRightRoute(page: HealthTips());

      case userTypeRoute:
        return SlideRightRoute(page: UserType());

      case searchDoctorRoute:
        print("Search page");
        return SlideRightRoute(
            page: SearchList(
          searchString: args,
        ));

      case demoRoute:
        return SlideRightRoute(
            page: InfiniteList(
          title: "demo",
        ));

      case drBookingListRoute:
        return SlideRightRoute(page: DrBookingList());

      case facilityBookingListRoute:
        return SlideRightRoute(page: FacilityBookingList());

      case pharmacyBookingListRoute:
        return SlideRightRoute(page: PharmacyBookingList());

      case seniorCareBookingListRoute:
        return SlideRightRoute(page: SeniorCareBookingList());

      //booking detail routes
      case patientBookingDetail:
        return SlideRightRoute(
            page: PatientBookingDetail(
          bookingDetailModel: args,
        ));
      case doctorBookingDetail:
        return SlideRightRoute(
            page: DoctorBookingDetail(
          bookingDetailModel: args,
        ));
      case facilityBookingDetail:
        return SlideRightRoute(
            page: FacilityBookingDetail(
          bookingDetailModel: args,
        ));
      case pharmacyBookingDetail:
        return SlideRightRoute(
            page: PharmacyBookingDetail(
          bookingDetailModel: args,
        ));
      case seniorCareBookingDetail:
        return SlideRightRoute(
            page: SeniorCareBookingDetail(
          bookingDetailModel: args,
        ));

      //pharmacy search navigation
      case pharmacySearchRoute:
        return SlideRightRoute(
            page: PharmaQuery(
          searchString: args,
        ));*/
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
