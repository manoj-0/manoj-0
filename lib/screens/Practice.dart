import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  void initState() {
    print("kumar");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            '   Practice',
            style:
                TextStyle(fontFamily: 'mvb', fontSize: 24, color: Colors.white),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            unselectedLabelColor: whitedim.withOpacity(0.5),
            labelColor: Colors.white,
            isScrollable: false,
            tabs: <Widget>[
              Tab(
                  child: Text(
                'Practice',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 16,
                ),
              )),
              Tab(
                  child: Text(
                'Analysis',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 16,
                ),
              )),
              Tab(
                  child: Text(
                'Saved',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 16,
                ),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Newpractises(),
            NewpractiseAnalysis(),
            Newpractises(),
          ],
        ),
      ),
    );
  }
}

class Newpractises extends StatefulWidget {
  @override
  _NewpractisesState createState() => _NewpractisesState();
}

class _NewpractisesState extends State<Newpractises> {
  bool isopen = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
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
                            'Subjects',
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
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: <Widget>[
                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.5,
                                  center: new Text(
                                    "50%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor:
                                      isopen == true ? green : maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  English',
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
                                            '  12  Chapters ',
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
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                          ],
                        )),

                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.7,
                                  center: new Text(
                                    "70%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor:
                                      isopen == true ? green : maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Quantitative Aptitude',
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
                                            '  30  Chapters ',
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
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                          ],
                        )),

                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.4,
                                  center: new Text(
                                    "40%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor:
                                      isopen == true ? green : maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Data interpretations',
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
                                            '  17  Chapters ',
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
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                          ],
                        )),

                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.8,
                                  center: new Text(
                                    "80%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor:
                                      isopen == true ? green : maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Logical Reasoning',
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
                                            '  22  Chapters ',
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
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                          ],
                        )),

                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 40.0,
                                  lineWidth: 5.0,
                                  percent: 0.4,
                                  center: new Text(
                                    "40%",
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 9.0,
                                        height: 1.4),
                                  ),
                                  progressColor:
                                      isopen == true ? green : maincolor,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Verbal reasoning',
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
                                            '  12  Chapters ',
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
                                IconButton(
                                  icon: Icon(
                                    isopen == true
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: grey,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isopen = !isopen;
                                    });
                                  },
                                )
                              ],
                            ),
                            isopen == true
                                ? SizedBox(
                                    height: 15,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Error Spotting- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Phrase replacement- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/43  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Fill in the blanks- Grammer',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/17  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/23  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Active & Passive Voice',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/45  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Spellings',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/32  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Synonyms & Antonyms',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/26  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                            isopen == true
                                ? Divider(
                                    color: grey,
                                  )
                                : SizedBox(),
                            isopen == false
                                ? SizedBox(
                                    height: 0,
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 1.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '  Direct & Indirect Speech',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontFamily: 'ar',
                                                  color: maincolor,
                                                  fontSize: 15.0,
                                                  height: 1.4),
                                            ),
                                            SizedBox(
                                              height: 2.0,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '  0/56  Questions',
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
                                      IconButton(
                                        icon: Icon(
                                          EvaIcons.arrowCircleRightOutline,
                                          color: maincolor,
                                        ),
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                          ],
                        )),
                  ],
                ),
              )
            ])),
      ],
    );
  }
}

//TODO:------------------------------------------------///////////////////////////////////////---

class NewpractiseAnalysis extends StatefulWidget {
  @override
  _NewpractiseAnalysisState createState() => _NewpractiseAnalysisState();
}

class _NewpractiseAnalysisState extends State<NewpractiseAnalysis> {
  bool isopen = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
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
                      padding: EdgeInsets.fromLTRB(17.0, 16.0, 0.0, 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Progress in Practice',
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
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1,
                child: Column(
                  children: <Widget>[
                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Progress',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'mvr',
                                            color: black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                    ],
                                  ),
                                ),
                                LinearPercentIndicator(
                                  width: 140.0,
                                  lineHeight: 5.0,
                                  percent: 0.3,
                                  backgroundColor: grey.withOpacity(0.5),
                                  progressColor: green,
                                ),
                                Text(
                                  ' 30 %   ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 13.0,
                                      height: 1.4),
                                ),
                              ],
                            ),
                          ],
                        )),

                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Accuracy',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'mvr',
                                            color: black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                    ],
                                  ),
                                ),
                                LinearPercentIndicator(
                                  width: 140.0,
                                  lineHeight: 5.0,
                                  percent: 0.76,
                                  backgroundColor: grey.withOpacity(0.5),
                                  progressColor: green,
                                ),
                                Text(
                                  ' 76 %   ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 13.0,
                                      height: 1.4),
                                ),
                              ],
                            ),
                          ],
                        )),

                    //1---------------------------------------

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                Container(
                                  width: 110,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        '  Speed',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'mvr',
                                            color: black,
                                            fontSize: 15.0,
                                            height: 1.4),
                                      ),
                                    ],
                                  ),
                                ),
                                LinearPercentIndicator(
                                  width: 140.0,
                                  lineHeight: 5.0,
                                  percent: 0.4,
                                  backgroundColor: grey.withOpacity(0.5),
                                  progressColor: green,
                                ),
                                Text(
                                  ' 40 %   ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'ar',
                                      color: black,
                                      fontSize: 13.0,
                                      height: 1.4),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ])),

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
                      padding: EdgeInsets.fromLTRB(17.0, 16.0, 0.0, 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Chapters Breakdown',
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

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 90.0,
                                  lineWidth: 8,
                                  percent: 0.8,
                                  center: new Text(
                                    "65\nChapters",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 13.0,
                                        height: 1.0),
                                  ),
                                  progressColor: maincolor,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.76,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Completing',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    51    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Ongoing',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    6    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Not-Started',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    45    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ])),

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
                      padding: EdgeInsets.fromLTRB(17.0, 16.0, 0.0, 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Questions Breakdown',
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

                    Container(
                        width: MediaQuery.of(context).size.width / 1.05,
                        padding: EdgeInsets.all(10.0),
                        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
                        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 5.0),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Color(0xFFeff0f3), width: 1),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 2.0,
                                ),
                                CircularPercentIndicator(
                                  radius: 90.0,
                                  lineWidth: 8,
                                  percent: 0.3,
                                  center: new Text(
                                    "34\nSeen",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'mvr',
                                        color: grey,
                                        fontSize: 13.0,
                                        height: 1.0),
                                  ),
                                  progressColor: red.withOpacity(0.7),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.76,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Correct',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    23    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Incorrect',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    8    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '     Skipped',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'mvr',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                          Text(
                                            '    58    ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontFamily: 'ar',
                                                color: black,
                                                fontSize: 15.0,
                                                height: 1.4),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ])),
      ],
    );
  }
}
