import 'package:flutter/material.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class CoursesCategoryWise extends StatefulWidget {
  @override
  _CoursesCategoryWiseState createState() => _CoursesCategoryWiseState();
}

class _CoursesCategoryWiseState extends State<CoursesCategoryWise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
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
            ' Banking Courses',
            style:
                TextStyle(fontFamily: 'mvb', fontSize: 20, color: Colors.white),
          ),
        ),
        body: Center(
            child: ListView(children: [
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
        ])));
  }
}
