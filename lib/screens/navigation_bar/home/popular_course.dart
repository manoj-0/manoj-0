import 'package:flutter/material.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/constants.dart';

class PopularCourse extends StatefulWidget {
  @override
  _PopularCourseState createState() => _PopularCourseState();
}

class _PopularCourseState extends State<PopularCourse> {
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
                        style:
                            TextStyle(color: grey, fontSize: 11.0, height: 1.3),
                      ),
                    ],
                  )),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(allCourse);
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
            height: 180.0,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: ScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                //1---------------------------------------
                Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(10.0, 7.0, 0.0, 5.0),
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
                    //  color: Colors.green,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(0.0),
                            ),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/images/crops/123.png',
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  height: 90.0,
                                  fit: BoxFit.fill,
                                ))),
                        Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
                          child: Text(
                            'SBI PO PRELIMS 2020\n ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ar',
                                color: black,
                                fontSize: 12.0,
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
                                              'assets/images/crops/123.png',
                                        )));
                          },
                          child: Container(
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
                    )),

                //1---------------------------------------
                Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(10.0, 7.0, 0.0, 5.0),
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
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(0.0),
                            ),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/images/crops/108.png',
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  height: 90.0,
                                  fit: BoxFit.fill,
                                ))),
                        Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
                          child: Text(
                            'SSC CHSL 2020 Crash Course For Tier -I ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ar',
                                color: black,
                                fontSize: 12.0,
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
                                              'assets/images/crops/108.png',
                                        )));
                          },
                          child: Container(
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
                    )),

                //1---------------------------------------
                Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(10.0, 7.0, 0.0, 5.0),
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
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(0.0),
                            ),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/images/crops/121.png',
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  height: 90.0,
                                  fit: BoxFit.fill,
                                ))),
                        Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 9.0, 7.0, 8.0),
                          child: Text(
                            'IBPS CLERK MAINS- GA & Banking Awareness ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ar',
                                color: black,
                                fontSize: 12.0,
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
                    )),

                //1---------------------------------------
                Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(10.0, 7.0, 0.0, 5.0),
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
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(0.0),
                            ),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/images/crops/119.png',
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  height: 90.0,
                                  fit: BoxFit.fill,
                                ))),
                        Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
                          child: Text(
                            'Target 2020 Banking\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ar',
                                color: black,
                                fontSize: 12.0,
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
                    )),

                //1---------------------------------------
                Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(10.0, 7.0, 0.0, 5.0),
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
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(0.0),
                            ),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/images/crops/122.png',
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  height: 90.0,
                                  fit: BoxFit.fill,
                                ))),
                        Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
                          child: Text(
                            'IBPS SO Prelims - Crash Course',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ar',
                                color: black,
                                fontSize: 12.0,
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
                                              'assets/images/crops/122.png',
                                        )));
                          },
                          child: Container(
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
                    )),

                //1---------------------------------------
                Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                    margin: EdgeInsets.fromLTRB(10.0, 7.0, 0.0, 5.0),
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
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(0.0),
                              topRight: Radius.circular(8.0),
                              bottomRight: Radius.circular(0.0),
                            ),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/images/crops/108.png',
                                  width:
                                      MediaQuery.of(context).size.width / 2.4,
                                  height: 90.0,
                                  fit: BoxFit.fill,
                                ))),
                        Padding(
                          padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
                          child: Text(
                            'DRDO MTS TIER-I Complete Course',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'ar',
                                color: black,
                                fontSize: 12.0,
                                height: 1.2),
                          ),
                        ),
                        Container(
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
                        )
                      ],
                    )),
              ],
            ),
          )
        ]));
  }
}
