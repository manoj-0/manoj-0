import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class AllQuiz extends StatefulWidget {
  @override
  _AllQuizState createState() => _AllQuizState();
}

class _AllQuizState extends State<AllQuiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            '  Quiz',
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
            EachQuizLayout(),
            EachQuizLayout(),
            EachQuizLayout(),
            EachQuizLayout(),
            EachQuizLayout(),
          ],
        ),
      ),
    );
  }
}

class EachQuizLayout extends StatefulWidget {
  @override
  _EachQuizLayoutState createState() => _EachQuizLayoutState();
}

class _EachQuizLayoutState extends State<EachQuizLayout> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width / 1,
          child: ListView(
            scrollDirection: Axis.horizontal,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(7, 10, 3, 10),
                  width: MediaQuery.of(context).size.width / 3.8, height: 30,
                  //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: maincolor, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(3.0, 8.4, 3.0, 6.0),
                  child: Text(
                    'MATHS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'mvb',
                      color: maincolor,
                      fontSize: 13.0,
                      height: 1,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(7, 10, 3, 10), width: 100,
                  height: 30,
                  //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                  decoration: BoxDecoration(
                    color: maincolor,
                    border: Border.all(color: maincolor, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(3.0, 8.4, 3.0, 6.0),
                  child: Text(
                    'ENGLISH',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'mvb',
                      color: whitedim,
                      fontSize: 13.0,
                      height: 1,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(7, 10, 3, 10), width: 60,
                  height: 30,
                  //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: maincolor, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(3.0, 8.4, 3.0, 6.0),
                  child: Text(
                    'LR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'mvb',
                      color: maincolor,
                      fontSize: 13.0,
                      height: 1,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(7, 10, 3, 10),
                  width: MediaQuery.of(context).size.width / 2.7, height: 30,
                  //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: maincolor, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(3.0, 8.4, 3.0, 6.0),
                  child: Text(
                    'GEN. KNOWLEDGE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'mvb',
                      color: maincolor,
                      fontSize: 13.0,
                      height: 1,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.fromLTRB(7, 10, 3, 10),
                  width: MediaQuery.of(context).size.width / 3.9, height: 30,
                  //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: maincolor, width: 1.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(3.0, 8.4, 3.0, 6.0),
                  child: Text(
                    'OTHERS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'mvb',
                      color: maincolor,
                      fontSize: 13.0,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier -I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier -I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier -I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier -I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier -I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier -I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier -I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier -I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => QuizDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 2.4,
            padding: EdgeInsets.only(top: 3),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 8.0),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 7.0,
                ),
                Image.asset('assets/images/quiz2.png'),
                SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 9.0, 0.0, 8.0),
                        child: Text(
                          'SSC CHSL 2020 Crash Quiz For Tier-I ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'ar',
                              color: black,
                              fontSize: 14.0,
                              height: 1.2),
                        ),
                      ),
                      Divider(
                        height: 7.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    EvaIcons.editOutline,
                                    size: 17.8,
                                    color: grey,
                                  ),
                                  Text(
                                    '10 Ques            ',
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
                                  Icon(
                                    EvaIcons.clockOutline,
                                    size: 17,
                                    color: grey,
                                  ),
                                  Text(
                                    '20 Mins            ',
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
                          Container(
                            width: MediaQuery.of(context).size.width / 4.1,
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
                                fontSize: 14.0,
                                height: 1.1,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
