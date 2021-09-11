import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:html_unescape/html_unescape_small.dart';
import 'package:tda_academy/bloc/course/course_bloc.dart';
import 'package:tda_academy/models/course/CourseMaster.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/navigation_bar/course/syllabus_card.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class CourseDetail extends StatefulWidget {
  final CourseMaster courseMaster;

  const CourseDetail({Key key, this.courseMaster}) : super(key: key);
  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  var unescape = HtmlUnescape();
  CourseBloc _courseBloc;
  CourseBloc _courseBloc1;
  String accessToken;
  int userId;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    _courseBloc = CourseBloc()
      ..add(LoadSyllabusByCourseIdEvent(
          accessToken: accessToken, courseId: widget.courseMaster.id));
    _courseBloc1 = CourseBloc()
      ..add(HasCourseBoughtEvent(
          accessToken: accessToken,
          courseId: widget.courseMaster.id,
          userId: userId));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => _courseBloc,
          ),
          BlocProvider(
            create: (_) => _courseBloc1,
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: maincolor,
            titleSpacing: 0.0,
            title: Text(
              widget.courseMaster.name,
              style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
            ),
            leading: IconButton(
              icon:
                  Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      height: 270,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: widget.courseMaster.images.length > 0
                                ? NetworkImage("${course_image_url}"
                                    "${widget.courseMaster.images[0].imageUrl}")
                                : AssetImage(""),
                            fit: BoxFit.cover),
                      ),
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Container(
                            padding: EdgeInsets.only(top: 5, left: 20),
                            width: size.width,
                            color: Colors.grey.withOpacity(0.1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: kWhite,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      )),
                                  margin: EdgeInsets.only(top: 80),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      widget.courseMaster.name ?? "",
                                      style:
                                          kLabelStyleBold.apply(color: kBlack),
                                    ),
                                  ),
                                ),
                                Chip(
                                  label: Text(
                                    "syllabus ${widget.courseMaster.totalSyllabus}",
                                  ),
                                  avatar: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.book,
                                    ),
                                  ),
                                ),
                                Chip(
                                  label: Text(
                                    "users ${widget.courseMaster.totalUsers}",
                                  ),
                                  avatar: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.person,
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Stack(
                                          overflow: Overflow.visible,
                                          children: <Widget>[
                                            CircleAvatar(
                                              radius: 20,
                                              backgroundImage: widget
                                                          .courseMaster
                                                          .user
                                                          .imageMaster !=
                                                      null
                                                  ? NetworkImage(
                                                      "${course_image_url}"
                                                      "${widget.courseMaster.user.imageMaster.imageUrl}")
                                                  : NetworkImage(
                                                      "${course_image_url}"
                                                      "logo.jpeg"),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              right: 0,
                                              top: 25,
                                              child: CircleAvatar(
                                                radius: 5,
                                                foregroundColor: Colors.white,
                                                backgroundColor: Colors.green,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(top: 0),
                                              child: Text(
                                                widget.courseMaster.mentorName,
                                                style: boldTextStyle(
                                                    size: 16,
                                                    textColor: Colors.white),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              child: Text(
                                                'Mentor',
                                                style: secondaryTextStyle(
                                                    size: 10,
                                                    textColor: Colors.white),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 30,
                      top: 150,
                      bottom: -40,
                      child: Container(
//
                        height: 170,
                        width: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: widget.courseMaster.images.length > 0
                                  ? NetworkImage("${course_image_url}"
                                      "${widget.courseMaster.images[0].imageUrl}")
                                  : AssetImage(""),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 35, left: 15, right: 15),
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Description',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, left: 15, right: 15),
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          widget.courseMaster.desc,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      Text(
                        (widget.courseMaster.courseIncludes != null)
                            ? 'Course includes'
                            : '',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Html(
                        data: unescape
                            .convert(widget.courseMaster.courseIncludes ?? ''),
                        style: {
                          "body": Style(
                            fontSize: FontSize(14.0),
                          ),
                        },
                      ),
                      Text(
                        (widget.courseMaster.whatLearn != null)
                            ? 'What you will learn'
                            : '',
                        style: boldTextStyle(size: 16),
                      ),
                      Html(
                        data: unescape
                            .convert(widget.courseMaster.whatLearn ?? ''),
                        style: {
                          "body": Style(
                            fontSize: FontSize(14.0),
                          ),
                        },
                      ),
                      Html(
                        data: unescape.convert(
                            widget.courseMaster.otherDescription ?? ''),
                        style: {
                          "body": Style(
                            fontSize: FontSize(14.0),
                          ),
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  width: size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent, width: 0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Course contents',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      BlocBuilder<CourseBloc, CourseState>(
                        cubit: _courseBloc,
                        builder: (context, state) {
                          if (state is SyllabusListByCourseIdLoaded) {
                            //Navigator.pop(context);
                            print(state.syllabusMasterList.length);

                            return renderSyllabusList(state.syllabusMasterList);
                          } else if (state is CourseError) {
                            return Container(
                              alignment: Alignment.center,
                              child: Text(state.message,
                                  style: kLabelStyleBold.apply(
                                    color: kred,
                                  )),
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                      //save payment info blocbuilder
                      BlocBuilder<CourseBloc, CourseState>(
                        cubit: _courseBloc,
                        builder: (context, state) {
                          if (state is CourseBought) {
                            // save user course mapping from here
                            print("course has been saved in mapping");
                            _courseBloc.add(SaveUserCourse(
                                accessToken: accessToken,
                                userId: userId,
                                courseId: widget.courseMaster.id));
                            return Container();
                          } else if (state is IsLoading) {
                            print("rendering body");
                            return LoadingUi();
                          } else {
                            return Container();
                          }
                        },
                      ),

                      //save user course mapping
                      BlocListener<CourseBloc, CourseState>(
                        listener: (context, state) {
                          if (state is UserCourseSaved) {
                            // redirect from here
                            //Navigator.pop(context);
                            // Navigator.of(context).popAndPushNamed(
                            //     dashboardRoute,
                            //     arguments: state.userMaster);
                          }
                        },
                        child: BlocBuilder<CourseBloc, CourseState>(
                          builder: (context, state) {
                            if (state is IsLoading) {
                              print("rendering body");
                              return LoadingUi();
                            } else {
                              return Container(
                                child: Text("No data saved"),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BlocBuilder<CourseBloc, CourseState>(
            cubit: _courseBloc1,
            builder: (context, state) {
              if (state is HasCourseBought) {
                return (state.courseMaster.hasBought)
                    ? Container(
                        height: 0,
                      )
                    : butNowButton(widget.courseMaster);
              } else {
                return Container(
                  height: 0,
                );
              }
            },
          ),
        ));
  }

  //buy now button
  Widget butNowButton(CourseMaster courseMaster) {
    print("rendering footer");
    return BottomAppBar(
      elevation: 3,
      color: kWhite,
      child: Container(
        padding: const EdgeInsets.only(left: 12.0, right: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("\u20B9${widget.courseMaster.actualPrice}",
                        style: kBoldLabelS.apply(
                            color: kGrey,
                            decoration: TextDecoration.lineThrough)),
                    Text("\u20B9${widget.courseMaster.offerPrice}",
                        style: kBoldLabel.apply(color: kBlack)),
                  ],
                ),
              ),
            ),
            RaisedButton(
              elevation: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {
                bool loggedIn = (userId > 0)
                    ? true
                    : false; // this might be a function that gets status of user login, you can fetch from prefs, state, etc.
                if (!loggedIn) {
                  Navigator.of(context).popAndPushNamed(loginRoute);
                } else {
                  Navigator.of(context)
                      .pushNamed(checkout, arguments: widget.courseMaster);
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: maincolor,
              child: Container(
                margin:
                    EdgeInsets.only(left: 5.0, right: 5.0, top: 12, bottom: 12),
                child: Text('Buy Now', style: kBoldLabelS.apply(color: kWhite)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //render popular course list
  Widget renderSyllabusList(List<SyllabusMaster> syllabusList) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return SyllabusCard(
          syllabusMaster: syllabusList[index],
        );
      },
      itemCount: syllabusList.length,
    );
  }

  Widget buyNowbutton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: RaisedButton(
        onPressed: () {},
        child: const Text('Bottom Button!', style: TextStyle(fontSize: 20)),
        color: Colors.blue,
        textColor: Colors.white,
        elevation: 5,
      ),
    );
  }

  //progress dialog
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
