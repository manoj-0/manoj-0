import 'package:flutter/material.dart';

import 'package:tda_academy/models/model_barrel.dart';

import 'package:tda_academy/utils/constants.dart';

class PopularCourseTwo extends StatefulWidget {
  final List<TestMaster> testMaster;

  const PopularCourseTwo({Key key, this.testMaster}) : super(key: key);
  @override
  _PopularCourseTwoState createState() => _PopularCourseTwoState();
}

class _PopularCourseTwoState extends State<PopularCourseTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7),
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 19),
        color: Colors.white,
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(17.0, 22.0, 0.0, 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Daily Quiz',
                        style: TextStyle(
                            fontFamily: 'ar',
                            fontWeight: FontWeight.w600,
                            color: black,
                            fontSize: 18.0,
                            height: 1.3),
                      ),
                      // Text('Boost your brain with daily quizes ' ,style: TextStyle(color: grey,fontSize: 11.0,height: 1.3),),
                    ],
                  )),
              // InkWell(
              //     onTap: () {
              // final BottomNavigationBar navigationBar =
              //     navBarGlobalKey.currentWidget;
              //  initialIndex = 0;
              // navigationBar.onTap(1);
              // },
              // child: Text(
              //   '\nSee All >   ',
              //   style: TextStyle(
              //       fontFamily: 'mvb',
              //       color: maincolor,
              //       fontSize: 14.0,
              //       height: 1.3),
              // ))
            ],
          ),
          Container(
            height: 157.0,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.testMaster.length,
              itemBuilder: (BuildContext context, int index) {
                return quizCard(
                  widget.testMaster[index],
                );
              },
            ),
          )
        ]));
  }

  Widget quizCard(TestMaster testMaster) {
    return InkWell(
      onTap: () {
        // if (testMaster.questionMaster != null) {
        //   Navigator.of(context).pushNamed(testDetail, arguments: testMaster);
        // } else {
        //   Fluttertoast.showToast(
        //       msg: "Alert: Invalid test", toastLength: Toast.LENGTH_SHORT);
        // }
        Navigator.of(context).pushNamed(testDetail, arguments: testMaster);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2.4,
        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
        margin: EdgeInsets.fromLTRB(7.0, 7.0, 3.0, 5.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFeff0f3), width: 1),
          color: Color(0xFFffffff),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xffe7edfb),
              blurRadius: 1.0,
              offset: Offset(0.1, 0.1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Icon(
                          //   EvaIcons.editOutline,
                          //   size: 16,
                          //   color: grey,
                          // ),
                          Text(
                            '',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'mvr',
                                color: grey,
                                fontSize: 13.0,
                                height: 1.2),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Icon(
                          //   EvaIcons.clockOutline,
                          //   size: 15,
                          //   color: grey,
                          // ),
                          Text(
                            '',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'mvr',
                                color: grey,
                                fontSize: 13.0,
                                height: 1.2),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/quiz2.png',
                  height: 30,
                ),
                SizedBox(
                  width: 8.0,
                ),
              ],
            ),
            Divider(
              height: 2.0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
              child: Text(
                testMaster.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'ar',
                    color: black,
                    fontSize: 12.0,
                    height: 1.2),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.8,
              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

              decoration: BoxDecoration(
                border: Border.all(color: maincolor, width: 1.0),
                borderRadius: BorderRadius.all(
                  Radius.circular(4.0),
                ),
              ),
              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
              child: Text(
                'START',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'mvr',
                  color: maincolor,
                  fontSize: 10.0,
                  height: 1.1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
