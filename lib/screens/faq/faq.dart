import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/navigation_bar/course/my_course/my_course_card.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  CourseBloc _courseBloc;
  String accessToken;
  int userId;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //navigate to the login screen if user is not logged in
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    // _courseBloc = CourseBloc()
    //   ..add(LoadMyCourseEvent(accessToken: accessToken, userId: userId));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _courseBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            '   Faq',
            style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Container(
            child: Center(
          child: Text(
            "Comming soon!",
            style: kLabelStyleBold.apply(color: maincolor, fontSizeDelta: 8),
          ),
        )),
      ),
    );
  }

  //render popular course list
  Widget renderCourseList(List<CourseMaster> courseList) {
    print("${courseList[0].name} testing my course tab ${courseList.length}");
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: courseList.length,
      itemBuilder: (BuildContext context, int index) {
        return MyCourseCard(
          courseMaster: courseList[index],
        );
      },
    );
  }
}
