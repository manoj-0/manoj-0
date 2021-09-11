import 'package:flutter/material.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class CourseCard extends StatefulWidget {
  final CourseMaster courseMaster;

  const CourseCard({Key key, this.courseMaster}) : super(key: key);

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  void initState() {
    // TODO: implement initState
    //print("${widget.courseMaster.name} avinash");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(courseDetail, arguments: widget.courseMaster);
      },
      child: Container(
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
                      child: Image.network(
                        "${course_image_url}"
                        "${(widget.courseMaster.images.length > 0) ? widget.courseMaster.images[0].imageUrl : 'logo.jpeg'}",
                        width: MediaQuery.of(context).size.width / 2.4,
                        height: 120.0,
                        fit: BoxFit.fill,
                      ))),
              Padding(
                padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
                child: Text(
                  widget.courseMaster.name,
                  textAlign: TextAlign.center,
                  style: kLabelStyle.apply(color: kBlack),
                ),
              ),
              InkWell(
                onTap: () {},
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
                  child: Text("\u20B9${widget.courseMaster.actualPrice}",
                      textAlign: TextAlign.center,
                      style: kLabelStyleBold.apply(color: maincolor)),
                ),
              )
            ],
          )),
    );
  }
}
