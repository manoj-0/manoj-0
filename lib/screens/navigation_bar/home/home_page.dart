import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/blog/blog_bloc.dart';
import 'package:tda_academy/bloc/caffair/caffairbloc.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/bloc/test/testbloc.dart';
import 'package:tda_academy/models/caffair/CaffairModel.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/navigation_bar/course/course_card.dart';
import 'package:tda_academy/screens/navigation_bar/current_affairs/caffairs_card.dart';
import 'package:tda_academy/screens/navigation_bar/home/offer_crousel.dart';
import 'package:tda_academy/screens/navigation_bar/home/popular_course_five.dart';
import 'package:tda_academy/screens/navigation_bar/home/popular_course_two.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String accessToken;
  int userId;
  ScrollController _controller;

  @override
  void initState() {
    // TODO: implement initState

    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    print("user_id ${userId} access_token${accessToken}");

    super.initState();
    //_courseBloc = CourseBloc();
    //_courseBloc.add(LoadCourseEvent(accessToken: token));
  }

  List<String> reportList = [
    "CDS",
    "AFCAT",
    "ACC",
    "CAPF",
    "SSB Interview",
    "Territorial Army",
    "NDA Exam",
    "INET"
  ];

  List<String> selectedReportList = List();

  _showReportDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //Here we will build the content of the dialog
          return AlertDialog(
            contentPadding: EdgeInsets.all(10.0),
            title: Text(
              "Categories",
              style: TextStyle(
                fontFamily: 'mvb',
                color: black,
                fontSize: 19.0,
              ),
            ),
            content: Container(
              width: double.maxFinite,
              child: ListView(
                padding: EdgeInsets.all(5.0),
                children: <Widget>[
                  Text(
                    "TDA Courses",
                    style: TextStyle(
                      fontFamily: 'mvb',
                      color: maincolor,
                      fontSize: 15.0,
                    ),
                  ),
                  MultiSelectChip(
                    reportList,
                    onSelectionChanged: (selectedList) {
                      setState(() {
                        selectedReportList = selectedList;
                      });
                    },
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Apply"),
                onPressed: () {
                  Navigator.of(context).pop();
                  for (final tabItem in selectedReportList) print(tabItem);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        elevation: 0.5,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 6.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("${course_image_url}"
                    "logo.jpeg"),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(bottom: 2.0),
            //   child: IconButton(
            //     icon: Icon(
            //       EvaIcons.arrowDown,
            //       color: kWhite,
            //     ),
            //     onPressed: () {
            //_showReportDialog();
            //   },
            // ),
            //),
          ],
        ),
        backgroundColor: maincolor,
        actions: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 4.0,
                ),
                child: IconButton(
                    icon: Icon(
                      EvaIcons.bellOutline,
                      size: 20,
                    ),
                    color: kWhite,
                    onPressed: () {}),
              ),
              // Positioned(
              //   right: 10,
              //   top: 12,
              //   child: Container(
              //     padding: EdgeInsets.all(1),
              //     decoration: BoxDecoration(
              //       color: red,
              //       borderRadius: BorderRadius.circular(15),
              //     ),
              //     constraints: BoxConstraints(
              //       minWidth: 13,
              //       minHeight: 13,
              //     ),
              //     child: Text(
              //       '1',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 10,
              //       ),
              //       textAlign: TextAlign.center,
              //     ),
              //   ),
              // )
            ],
          ),
          // IconButton(
          //     icon: Icon(
          //       Icons.account_circle,
          //       size: 21,
          //     ),
          //     color: kWhite,
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => RegistrationPage()));
          //     }),
        ],
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: OfferCrousel(),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(17.0, 12.0, 0.0, 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Popular Courses',
                          style: TextStyle(
                              fontFamily: 'ar',
                              fontWeight: FontWeight.w600,
                              color: black,
                              fontSize: 18.0,
                              height: 1.3),
                        ),
                        Text(
                          'Best Selling & Trending Courses ',
                          style: TextStyle(
                              color: grey, fontSize: 11.0, height: 1.3),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 0),
                ),
                child: BlocBuilder<CourseBloc, CourseState>(
                  builder: (context, state) {
                    // if (state is IsLoading) {
                    //   print("rendering body");
                    //   return LoadingUi();
                    // } else
                    if (state is CourseLoaded) {
                      print(state.courseMasterList.length);

                      return renderCourseList(state.courseMasterList);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
          ])),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Current Affairs",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .apply(color: kBlack),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          caffairs,
                        );
                      },
                      child: Text(
                        "View All",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .apply(color: kBlack),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .10,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent, width: 0),
                ),
                child: BlocBuilder<CaffairBloc, CaffairState>(
                  builder: (context, state) {
                    if (state is CaffairListLoaded) {
                      print(state.caffairList.data.length);
                      //if (userId > 0)
                      return renderCAffairList(state.caffairList.data);
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
          ])),
          SliverToBoxAdapter(
            child: BlocBuilder<TestBloc, TestState>(
              builder: (context, state) {
                if (state is TestLoading) {
                  print("rendering body");
                  return LoadingUi();
                } else if (state is TestListLoaded) {
                  print(state.testMaster.length);
                  //if (userId > 0)
                  return PopularCourseTwo(testMaster: state.testMaster);
                } else {
                  return Container();
                }
              },
            ),
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<BlogBloc, BlogState>(
              builder: (context, state) {
                if (state is BlogListLoaded) {
                  print(state.blogMasterList.length);
                  //if (userId > 0)
                  return PopularCourseFive(blogMaster: state.blogMasterList);
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

//render popular course list
  Widget renderCAffairList(List<CaffairModel> caffairModel) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: caffairModel.length,
      itemBuilder: (BuildContext context, int index) {
        return CaffairCard(
          caffairModel: caffairModel[index],
        );
      },
    );
  }

//render popular course list
  Widget renderCourseList(List<CourseMaster> courseList) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: courseList.length,
      itemBuilder: (BuildContext context, int index) {
        return CourseCard(
          courseMaster: courseList[index],
        );
      },
    );
  }

  // progress dialog
  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Please wait...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
