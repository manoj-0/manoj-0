import 'package:flutter/material.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/constants.dart';

class PopularCourseThree extends StatefulWidget {
  @override
  _PopularCourseThreeState createState() => _PopularCourseThreeState();
}

class _PopularCourseThreeState extends State<PopularCourseThree> {
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
                        'Popular Test Series',
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
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AllTests()));
                  },
                  child: Text(
                    '\nSee All >   ',
                    style: TextStyle(
                        fontFamily: 'mvb',
                        color: maincolor,
                        fontSize: 14.0,
                        height: 1.3),
                  ))
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1,
            child: Column(
              children: <Widget>[
                //1---------------------------------------
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizDetails()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.05,
                    padding: EdgeInsets.all(10.0),
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/airforce.png',
                          height: 40,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '  SSC CHSL 2020 Mock test ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'ar',
                                    color: black,
                                    fontSize: 14.0,
                                    height: 1.4),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '  80 Total Tests   |  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                  Text(
                                    '  10 FREE Test ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: green,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: grey,
                        )
                      ],
                    ),
                  ),
                ),

                //1---------------------------------------

                //1---------------------------------------
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizDetails()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.05,
                    padding: EdgeInsets.all(10.0),
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/drdo.png',
                          height: 40,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '  DRDO MTS 2020 Mock test ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'ar',
                                    color: black,
                                    fontSize: 14.0,
                                    height: 1.4),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '  80 Total Tests   |  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                  Text(
                                    '  10 FREE Test ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: green,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: grey,
                        )
                      ],
                    ),
                  ),
                ),

                //1---------------------------------------

                //1---------------------------------------
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizDetails()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.05,
                    padding: EdgeInsets.all(10.0),
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/airforce.png',
                          height: 40,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '  AIRFORCE 2020 Mock test ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'ar',
                                    color: black,
                                    fontSize: 14.0,
                                    height: 1.4),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '  80 Total Tests   |  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                  Text(
                                    '  10 FREE Test ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: green,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: grey,
                        )
                      ],
                    ),
                  ),
                ),

                //1---------------------------------------

                //1---------------------------------------
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizDetails()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.05,
                    padding: EdgeInsets.all(10.0),
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/navy.png',
                          height: 40,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '  NAVY GTS 2020 Mock test',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'ar',
                                    color: black,
                                    fontSize: 14.0,
                                    height: 1.4),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '  80 Total Tests   |  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                  Text(
                                    '  10 FREE Test ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: green,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: grey,
                        )
                      ],
                    ),
                  ),
                ),

                //1---------------------------------------

                //1---------------------------------------
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizDetails()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.05,
                    padding: EdgeInsets.all(10.0),
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/drdo.png',
                          height: 40,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '  DRDO MTS 2020 Mock test ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'ar',
                                    color: black,
                                    fontSize: 14.0,
                                    height: 1.4),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '  80 Total Tests   |  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                  Text(
                                    '  10 FREE Test ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: green,
                                        fontSize: 13.0,
                                        height: 1.4),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: grey,
                        )
                      ],
                    ),
                  ),
                ),

                //1---------------------------------------
              ],
            ),
          )
        ]));
  }
}
