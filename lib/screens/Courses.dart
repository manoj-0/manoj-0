import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/constants.dart';

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            '   Courses',
            style:
                TextStyle(fontFamily: 'mvb', fontSize: 24, color: Colors.white),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: kWhite),
            onPressed: () {
              Navigator.of(context).pop();
            },
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
                'ALL COURSES',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'CDS',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'AFCAT',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'ACC',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'CAPF',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'SSB Interview',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'Territorial Army',
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
            EachCourselayoutAll(),
            EachCourselayout(),
            EachCourselayout(),
            EachCourselayout(),
            EachCourselayout(),
            EachCourselayout(),
            EachCourselayout(),
          ],
        ),
      ),
    );
  }
}

class EachCourselayoutAll extends StatefulWidget {
  @override
  _EachCourselayoutAllState createState() => _EachCourselayoutAllState();
}

class _EachCourselayoutAllState extends State<EachCourselayoutAll> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/119.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Tarrget 2020 Banking Master All types',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/119.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/121.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'IBPS CLERK MAINS- GA & Banking Awareness',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/121.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/126.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'TARGET 2020 BANKING\n',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/126.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/109.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Indian Economy For Railway Exams',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/109.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/124.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Current Affairs 2020- Monthly MCQ\'s',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/124.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/119.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Target 2020 Banking Master All types',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/119.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/121.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'IBPS CLERK MAINS- GA & Banking Awareness',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/121.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/126.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'TARGET 2020 BANKING\n',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/126.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/124.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Current Affairs 2020- Monthly MCQ\'s',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/124.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/119.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Target 2020 Banking Master All types',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/119.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/121.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'IBPS CLERK MAINS- GA & Banking Awareness',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/121.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/126.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'TARGET 2020 BANKING\n',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/126.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/109.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Indian Economy For Railway Exams',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/109.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/124.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Current Affairs 2020- Monthly MCQ\'s',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/124.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/119.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Target 2020 Banking Master All types',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/119.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/121.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'IBPS CLERK MAINS- GA & Banking Awareness',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/121.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/126.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'TARGET 2020 BANKING\n',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/126.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/109.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Indian Economy For Railway Exams',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/109.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
                //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 15.0),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/124.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Current Affairs 2020- Monthly MCQ\'s',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails(
                                            backgroundImages:
                                                'assets/images/crops/124.png',
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //-----
          ],
        ),
      ),

//TODO:--------------------------------------------- Popular courses  ------------------------------------------
      Container(
          margin: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 7),
          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 9),
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
                          'Explore Courses by Category',
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 18.0,
                              height: 1.3),
                        ),
                        // Text('Boost your brain with daily quizes ' ,style: TextStyle(color: grey,fontSize: 11.0,height: 1.3),),
                      ],
                    )),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                children: <Widget>[
                  //1---------------------------------------
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesCategoryWise()));
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
                          SizedBox(
                            width: 2.0,
                          ),
                          Icon(
                            EvaIcons.bookOpenOutline,
                            color: maincolor,
                            size: 24.0,
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
                                  '  Banking Courses',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 15.0,
                                      height: 1.4),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '  26  Courses ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'mvr',
                                          color: grey,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesCategoryWise()));
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
                          SizedBox(
                            width: 2.0,
                          ),
                          Icon(
                            EvaIcons.bookOpenOutline,
                            color: maincolor,
                            size: 24.0,
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
                                  '  SSC & Govt. Exam Courses',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 15.0,
                                      height: 1.4),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '  32  Courses ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'mvr',
                                          color: grey,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesCategoryWise()));
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
                          SizedBox(
                            width: 2.0,
                          ),
                          Icon(
                            EvaIcons.bookOpenOutline,
                            color: maincolor,
                            size: 24.0,
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
                                  '  Railway Courses',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 15.0,
                                      height: 1.4),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '  11  Courses ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'mvr',
                                          color: grey,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesCategoryWise()));
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
                          SizedBox(
                            width: 2.0,
                          ),
                          Icon(
                            EvaIcons.bookOpenOutline,
                            color: maincolor,
                            size: 24.0,
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
                                  '  Insurance Courses',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 15.0,
                                      height: 1.4),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '  7   Courses ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'mvr',
                                          color: grey,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesCategoryWise()));
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
                          SizedBox(
                            width: 2.0,
                          ),
                          Icon(
                            EvaIcons.bookOpenOutline,
                            color: maincolor,
                            size: 24.0,
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
                                  '  Defence Corses',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 15.0,
                                      height: 1.4),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '  13  Courses ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'mvr',
                                          color: grey,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoursesCategoryWise()));
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
                          SizedBox(
                            width: 2.0,
                          ),
                          Icon(
                            EvaIcons.bookOpenOutline,
                            color: maincolor,
                            size: 24.0,
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
                                  '  Free courses',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 15.0,
                                      height: 1.4),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      '  28  Courses ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'mvr',
                                          color: grey,
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
                ],
              ),
            )
          ])),
    ]);
  }
}

class EachCourselayout extends StatefulWidget {
  @override
  _EachCourselayoutState createState() => _EachCourselayoutState();
}

class _EachCourselayoutState extends State<EachCourselayout> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/119.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Target 2020 Banking Master All types',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/121.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'IBPS CLERK MAINS- GA & Banking Awareness',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/126.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'TARGET 2020 BANKING\n',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/109.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Indian Economy For Railway Exams',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/124.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Current Affairs 2020- Monthly MCQ\'s',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/119.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Target 2020 Banking Master All types',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/121.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'IBPS CLERK MAINS- GA & Banking Awareness',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/126.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'TARGET 2020 BANKING\n',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/109.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Indian Economy For Railway Exams',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/124.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Current Affairs 2020- Monthly MCQ\'s',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/119.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Target 2020 Banking Master All types',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/121.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'IBPS CLERK MAINS- GA & Banking Awareness',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/126.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'TARGET 2020 BANKING\n',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/109.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Indian Economy For Railway Exams',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //1---------------------------------------
            Container(
                width: MediaQuery.of(context).size.width / 1.04,
                //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 15.0),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topRight: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/images/crops/124.png',
                              width: MediaQuery.of(context).size.width / 2.4,
                              height: 90.0,
                              fit: BoxFit.fill,
                            ))),
                    Container(
                      padding: EdgeInsets.only(left: 4),
                      width: MediaQuery.of(context).size.width / 1.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 12.0),
                            child: Text(
                              'Current Affairs 2020- Monthly MCQ\'s',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'ar',
                                  color: black,
                                  fontSize: 14.0,
                                  height: 1.2),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 80),
                              width: MediaQuery.of(context).size.width / 3.8,
                              //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                              decoration: BoxDecoration(
                                border: Border.all(color: green, width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                              child: Text(
                                'FREE DEMO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'mvr',
                                  color: green,
                                  fontSize: 10.0,
                                  height: 1.1,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),

            //-----
          ],
        ),
      ),
    ]);
  }
}
