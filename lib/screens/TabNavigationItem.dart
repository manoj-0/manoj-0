import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tda_academy/screens/navigation_bar/blogs/blogs_list.dart';
import 'package:tda_academy/screens/navigation_bar/practice/practice_list.dart';
import 'package:tda_academy/screens/user/Profile.dart';
import 'package:tda_academy/screens/navigation_bar/course/my_course/my_course.dart';
import 'package:tda_academy/screens/navigation_bar/home/home_page.dart';
import 'package:tda_academy/screens/screens_barrel.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Icon icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: HomePage(),
          icon: Icon(EvaIcons.homeOutline),
          title: "Home",
        ),
        // TabNavigationItem(
        //   page: AllQuiz(),
        //   icon: Icon(EvaIcons.clockOutline),
        //   title: "Quiz",
        // ),

        TabNavigationItem(
          page: MyCourse(),
          icon: Icon(EvaIcons.bookOpenOutline),
          title: "My Course",
        ),
        TabNavigationItem(
          page: PracticeList(),
          icon: Icon(EvaIcons.editOutline),
          title: "Practice",
        ),
        TabNavigationItem(
          page: BlogsList(),
          icon: Icon(EvaIcons.paperPlaneOutline),
          title: "Article",
        ),
        TabNavigationItem(
          page: Profile(),
          icon: Icon(EvaIcons.person),
          title: "Profile",
        ),
      ];
}
