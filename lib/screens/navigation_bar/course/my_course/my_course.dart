import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/navigation_bar/course/course_card.dart';
import 'package:tda_academy/screens/navigation_bar/course/my_course/my_course_card.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class MyCourse extends StatefulWidget {
  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
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
    _courseBloc = CourseBloc()
      ..add(LoadMyCourseEvent(accessToken: accessToken, userId: userId));
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
            backgroundColor: maincolor,
            titleSpacing: 0.0,
            title: Text(
              '   My  Courses',
              style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
            ),
          ),
          body: Container(
            child: BlocBuilder<CourseBloc, CourseState>(
              builder: (context, state) {
                if (state is IsLoading) {
                  print("rendering body");
                  return LoadingUi();
                } else if (state is MyCourseLoaded) {
                  return renderCourseList(state.courseMasterList);
                } else {
                  return Container();
                }
              },
            ),
          )),
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
