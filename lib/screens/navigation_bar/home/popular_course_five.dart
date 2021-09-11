import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/navigation_bar/blogs/blog_card.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/constants.dart';

class PopularCourseFive extends StatefulWidget {
  final List<BlogMaster> blogMaster;

  const PopularCourseFive({Key key, this.blogMaster}) : super(key: key);
  @override
  _PopularCourseFiveState createState() => _PopularCourseFiveState();
}

class _PopularCourseFiveState extends State<PopularCourseFive> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7),
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
                        'Recent Articles',
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
              // initialIndex = 0;
              //navigationBar.onTap(4);
              //},
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
            width: MediaQuery.of(context).size.width / 1,
            child: Column(
              children: <Widget>[
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.blogMaster.length,
                  itemBuilder: (BuildContext context, int index) {
                    return BlogCard(
                      blogMaster: widget.blogMaster[index],
                    );
                  },
                )
              ],
            ),
          )
        ]));
  }

  Widget blogCard(BlogMaster blogMaster) {
    return InkWell(
      onTap: () {
        // if (testMaster.questionMaster != null) {
        //   Navigator.of(context).pushNamed(testDetail, arguments: testMaster);
        // } else {
        //   Fluttertoast.showToast(
        //       msg: "Alert: Invalid test", toastLength: Toast.LENGTH_SHORT);
        // }
        //Navigator.of(context).pushNamed(testDetail, arguments: testMaster);
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              blogMaster.title,
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
              blogMaster.description,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: 'mvrr', color: grey, fontSize: 12.0, height: 1.4),
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
                      Icon(EvaIcons.shareOutline, size: 15, color: maincolor),
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
    );
  }
}
