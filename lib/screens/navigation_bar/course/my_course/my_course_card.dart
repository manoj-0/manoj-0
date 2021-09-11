import 'package:flutter/material.dart';
import 'package:tda_academy/models/course/CourseMaster.dart';
import 'package:tda_academy/screens/screens_barrel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class MyCourseCard extends StatefulWidget {
  final CourseMaster courseMaster;

  const MyCourseCard({Key key, this.courseMaster}) : super(key: key);
  @override
  _MyCourseCardState createState() => _MyCourseCardState();
}

class _MyCourseCardState extends State<MyCourseCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(mycourseDetail, arguments: widget.courseMaster);
      },
      child: Container(
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
                            child: Image.network(
                              "${course_image_url}"
                              "${widget.courseMaster.images[0].imageUrl}",
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
                            padding: EdgeInsets.fromLTRB(7.0, 11.0, 0.0, 3.0),
                            child: Text(
                              widget.courseMaster.name,
                              textAlign: TextAlign.start,
                              style: kLabelStyle.apply(color: kBlack),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / .8,
                            //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                            padding: EdgeInsets.fromLTRB(3.0, 2.0, 3.0, 3.0),
                            child: Text(
                              widget.courseMaster.desc,
                              style: kLabelStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),

            //-----
          ],
        ),
      ),
    );
  }
}
