import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/SDUtils/SDColors.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';

class Coursedetails extends StatefulWidget {
  String name;
  String totalChapter;
  String backgroundImages;

  Coursedetails({this.name, this.totalChapter, this.backgroundImages});

  @override
  _CoursedetailsState createState() => _CoursedetailsState();
}

class _CoursedetailsState extends State<Coursedetails> {
  List<SDLessonsDetailsModel> chapters = [
    SDLessonsDetailsModel(
      chapterName: 'Introduction',
      chapterDetails: 'Introduction to geography',
    ),
    SDLessonsDetailsModel(
      chapterName: 'Maps type & Usages',
      chapterDetails: 'Learn about maps type & how to use each...',
    ),
    SDLessonsDetailsModel(
      chapterName: 'Population & Country',
      chapterDetails: 'Learn the worldwide population & country...',
    ),
    SDLessonsDetailsModel(
      chapterName: 'Climate ',
      chapterDetails: 'Learn about climate...',
    ),
    SDLessonsDetailsModel(
      chapterName: 'Earth-forming Process ',
      chapterDetails: 'Learn how the earth-forming process be...',
    ),
    SDLessonsDetailsModel(
      chapterName: 'Rocks',
      chapterDetails: 'Learn the type of the rocks,and their spec...',
    ),
    SDLessonsDetailsModel(
      chapterName: 'Earthquake',
      chapterDetails: 'Learn about seismology...',
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: widget.backgroundImages == null
                            ? NetworkImage(
                                "https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20190816134243/Desert-sand-sunset.jpg")
                            : AssetImage(widget.backgroundImages),
                        fit: BoxFit.cover),
                  ),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        padding: EdgeInsets.only(top: 22, left: 20),
                        width: size.width,
                        color: Colors.grey.withOpacity(0.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black12,
                              child: CloseButton(),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 100),
                              child: Text(
                                widget.name == null ? 'Biology' : widget.name,
                                style: boldTextStyle(textColor: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                widget.totalChapter == null
                                    ? '7 chapter'
                                    : widget.totalChapter,
                                style: secondaryTextStyle(
                                    textColor: Colors.white.withOpacity(0.8)),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Stack(
                                      overflow: Overflow.visible,
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: NetworkImage(
                                              'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
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
                                            'Erwin Jose',
                                            style: boldTextStyle(
                                                size: 16,
                                                textColor: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 5),
                                          child: Text(
                                            'Teacher',
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
                          image: widget.backgroundImages == null
                              ? NetworkImage(
                                  "https://d2rdhxfof4qmbb.cloudfront.net/wp-content/uploads/20190816134243/Desert-sand-sunset.jpg")
                              : AssetImage(widget.backgroundImages),
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
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Select Chapter',
                      style: secondaryTextStyle(),
                    ),
                  ),
                  ListView.builder(
                    itemCount: chapters == null ? 0 : chapters.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CoursedetailsInner(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    chapters[index].chapterName,
                                    style: boldTextStyle(size: 16),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 8, bottom: 5),
                                    child: Text(
                                      chapters[index].chapterDetails,
                                      style: secondaryTextStyle(size: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                  child: IconButton(
                                onPressed: () {},
                                color: index == 0 || index == 1 || index == 2
                                    ? sdSecondaryColorGreen.withOpacity(0.7)
                                    : Colors.grey,
                                icon: Icon(Icons.check_circle),
                              ))
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
