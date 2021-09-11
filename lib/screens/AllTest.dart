import 'package:flutter/material.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class AllTests extends StatefulWidget {
  @override
  _AllTestsState createState() => _AllTestsState();
}

class _AllTestsState extends State<AllTests> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            '  Mock Tests',
            style:
                TextStyle(fontFamily: 'mvb', fontSize: 24, color: Colors.white),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            unselectedLabelColor: whitedim.withOpacity(0.5),
            labelColor: Colors.white,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                  child: Text(
                'SSC CGL',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'SSC CHSL',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'SSC MTS',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'SSC OTHERS',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'ALL OTHERS',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            NewEachTest(),
            NewEachTest(),
            NewEachTest(),
            NewEachTest(),
            NewEachTest(),
          ],
        ),
      ),
    );
  }
}

class NewEachTest extends StatefulWidget {
  @override
  _NewEachTestState createState() => _NewEachTestState();
}

class _NewEachTestState extends State<NewEachTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
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
                          '  SSC CHSL 2020 Mock dtest ',
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
    );
  }
}
