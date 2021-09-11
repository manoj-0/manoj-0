import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/navigation_bar/course/my_course/my_course_syllabus_card.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class MyCourseDetail extends StatefulWidget {
  final CourseMaster courseMaster;

  const MyCourseDetail({Key key, this.courseMaster}) : super(key: key);
  @override
  _MyCourseDetailState createState() => _MyCourseDetailState();
}

class _MyCourseDetailState extends State<MyCourseDetail> {
  CourseBloc _courseBloc;
  String accessToken;
  int userId;
  @override
  void initState() {
    // TODO: implement initState
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    super.initState();
    _courseBloc = CourseBloc()
      ..add(LoadSyllabusByCourseIdEvent(
          accessToken: accessToken, courseId: widget.courseMaster.id));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(top: 5),
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: kWhite),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "# syllabus ${widget.courseMaster.totalSyllabus}",
                                      style: secondaryTextStyle(
                                          textColor: kBlack.withOpacity(0.8)),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(top: 5),
                                  width: 120,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: kWhite),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "# users ${widget.courseMaster.totalUsers}",
                                      style: secondaryTextStyle(
                                          textColor: kBlack.withOpacity(0.8)),
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
                        builder: (context, state) {
                          if (state is IsLoading) {
                            print("rendering body");
                            return LoadingUi();
                          } else if (state is SyllabusListByCourseIdLoaded) {
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          //bottomNavigationBar: butNowButton(widget.courseMaster),
        ));
  }

  //buy now button
  Widget butNowButton(CourseMaster courseMaster) {
    print("rendering footer");
    return BottomAppBar(
      elevation: 3,
      color: kWhite,
      child: Container(
          padding: EdgeInsets.only(right: 0.0, left: 0.0, bottom: 0.0, top: 0),
          margin: EdgeInsets.all(5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(border: Border.all(color: kWhite)),
                margin: EdgeInsets.only(
                    left: 25.0, right: 55.0, top: 12, bottom: 12),
                child: Text("\u20B9${widget.courseMaster.actualPrice}",
                    style: kBoldLabel.apply(color: kBlack)),
              ),
              RaisedButton(
                elevation: 0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                color: maincolor,
                child: Container(
                  margin: EdgeInsets.only(
                      left: 5.0, right: 5.0, top: 12, bottom: 12),
                  child:
                      Text('Buy Now', style: kBoldLabelS.apply(color: kWhite)),
                ),
              )
            ],
          )),
    );
  }

  //render popular course list
  Widget renderSyllabusList(List<SyllabusMaster> syllabusList) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return MyCourseSyllabusCard(
          syllabusMaster: syllabusList[index],
          courseMaster: widget.courseMaster,
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
}
