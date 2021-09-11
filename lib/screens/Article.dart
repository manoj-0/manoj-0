import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/constants.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          elevation: 1.0,
          title: Text(
            '  Articles',
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
                'CATEGORY  1',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'CATEGORY  2',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'CATEGORY  3',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'CATEGORY  4',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'CATEGORY  5',
                style: TextStyle(
                  fontFamily: 'ar',
                  fontSize: 14,
                ),
              )),
              Tab(
                  child: Text(
                'CATEGORY  6',
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
            NewArticles(),
            NewArticles(),
            NewArticles(),
            NewArticles(),
            NewArticles(),
            NewArticles(),
          ],
        ),
      ),
    );
  }
}

class NewArticles extends StatefulWidget {
  @override
  _NewArticlesState createState() => _NewArticlesState();
}

class _NewArticlesState extends State<NewArticles> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        //1---------------------------------------
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
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
                MaterialPageRoute(builder: (context) => ArtcileDetails()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.05,
            padding: EdgeInsets.all(10.0),
            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
            margin: EdgeInsets.fromLTRB(7.0, 4.0, 7.0, 3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFFe3e4ec), width: 1),
              color: Color(0xFFffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0xffe7edfb),
                  blurRadius: 2.0,
                  offset: Offset(0.3, 0.3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvbb',
                      color: black,
                      fontSize: 14.0,
                      height: 1.4),
                ),
                Divider(
                  height: 8,
                ),
                Text(
                  'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'mvrr',
                      color: grey,
                      fontSize: 12.0,
                      height: 1.4),
                ),
                Divider(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

        //1---------------------------------------
      ],
    );
  }
}
