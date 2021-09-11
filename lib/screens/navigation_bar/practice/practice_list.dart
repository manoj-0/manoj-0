import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/bloc/test/testbloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/navigation_bar/course/my_course/my_course_card.dart';
import 'package:tda_academy/screens/navigation_bar/practice/test_card.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class PracticeList extends StatefulWidget {
  @override
  _PracticeListState createState() => _PracticeListState();
}

class _PracticeListState extends State<PracticeList> {
  TestBloc _testBloc;
  String accessToken;
  int userId;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //navigate to the login screen if user is not logged in
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    _testBloc = TestBloc()..add(LoadAllTestEvent(accessToken: accessToken));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _testBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            '   Quizzes',
            style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
          ),
        ),
        body: Container(
          child: BlocBuilder<TestBloc, TestState>(
            builder: (context, state) {
              if (state is TestLoading) {
                print("rendering body");
                return LoadingUi();
              } else if (state is TestListLoaded) {
                print(state.testMaster.length);

                return renderCourseList(state.testMaster);
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  //render popular course list
  Widget renderCourseList(List<TestMaster> testList) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: testList.length,
      itemBuilder: (BuildContext context, int index) {
        return TestCard(
          testMaster: testList[index],
        );
      },
    );
  }
}
