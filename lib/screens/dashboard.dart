import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/blog/blog_bloc.dart';
import 'package:tda_academy/bloc/caffair/caffairbloc.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/bloc/test/testbloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/TabNavigationItem.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/theme_constants.dart';

import 'dart:ui';

class Dashboard extends StatefulWidget {
  final UserMaster userMaster;

  const Dashboard({Key key, this.userMaster}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CourseBloc _courseBloc;
  TestBloc _testBloc;
  BlogBloc _blogBloc;
  CaffairBloc _caffairBloc;
  String accessToken;

  int userId;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    print("user_id ${userId} access_token ${accessToken}");
    // intialize all the bloc which is required to display the data on the dashboard
    // and in the bottom navigation tab
    _courseBloc = CourseBloc();
    _caffairBloc = CaffairBloc()..add(LoadCaffairListEvent(pageNumber: 1));
    _courseBloc.add(LoadCourseEvent(accessToken: accessToken));
    _testBloc = TestBloc()..add(LoadAllTestEvent(accessToken: accessToken));
    _blogBloc = BlogBloc()..add(LoadBlogListEvent());
  }

//On Home Page, for account icon pressed
  Future<void> checkCredsAndNavigate(int index) async {
    bool loggedIn = (userId > 0)
        ? true
        : false; // this might be a function that gets status of user login, you can fetch from prefs, state, etc.
    if (!loggedIn && (index == 1 || index == 4)) {
      Navigator.of(context).popAndPushNamed(loginRoute);
    } else {
      setState(() => _currentIndex = index);
    }
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => _courseBloc),
        BlocProvider(create: (_) => _testBloc),
        BlocProvider(create: (_) => _blogBloc),
        BlocProvider(create: (_) => _caffairBloc),
        // BlocProvider(
        //     create: (_) => WorkoutBloc()..add(WorkoutLoadEvent(token: token))),
        // BlocProvider<CourseBloc>(
        //   create: (_) => CourseBloc()
        //     ..add(CourseLoadEvent(token: token))
        //     ..add(LoadBasicEvent(token: token))
        //     ..add(LoadMasterEvent(token: token))
        //     ..add(LoadSkilledEvent(token: token)),
        // ),
      ],
      child: Scaffold(
        body: TabNavigationItem.items[_currentIndex].page,
        // body: IndexedStack(
        //   index: _currentIndex,
        //   children: <Widget>[
        //     for (final tabItem in TabNavigationItem.items) tabItem.page,
        //   ],
        // ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: kWhite,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: maincolor,
              textTheme: Theme.of(context).textTheme.copyWith(
                  caption: new TextStyle(
                      color:
                          kGrey))), // sets the inactive color of the `BottomNavigationBar`

          child: BottomNavigationBar(
            backgroundColor: kWhite,
            selectedItemColor: maincolor,
            unselectedItemColor: kGrey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            unselectedIconTheme: IconThemeData(
              color: kGrey,
              size: 20,
            ),
            selectedIconTheme: IconThemeData(
              color: maincolor,
              size: 22,
            ),
            currentIndex: _currentIndex,
            onTap: (int index) {
              checkCredsAndNavigate(index);
            },
            items: <BottomNavigationBarItem>[
              for (final tabItem in TabNavigationItem.items)
                BottomNavigationBarItem(
                  icon: tabItem.icon,
                  label: tabItem.title,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
