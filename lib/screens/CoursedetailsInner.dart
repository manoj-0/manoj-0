import 'package:flutter/material.dart';

import 'package:lipsum/lipsum.dart' as lipsum;
import 'package:tda_academy/utils/SDUtils/SDColors.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';

class CoursedetailsInner extends StatefulWidget {
  @override
  _CoursedetailsInnerState createState() => _CoursedetailsInnerState();
}

class _CoursedetailsInnerState extends State<CoursedetailsInner> {
  var text;

  @override
  void initState() {
    super.initState();
    text = lipsum.createText(numParagraphs: 10, numSentences: 8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//  AppBar(titleSpacing: 0.0,leading: IconButton(icon:Icon(Icons.arrow_back, color: Colors.white,),
//     onPressed: (){
//       Navigator.pop(context);
//     }),
//           title: Text('  Page Unavailable',style: TextStyle(fontFamily:'mvb',fontSize: 20,color: Colors.white),),

//         ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Container(
//            child: CloseButton(
//              color: Colors.black,
//            ),
            ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.details,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.message,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Text(
            text,
            style: boldTextStyle(
                letterSpacing: 1,
                wordSpacing: 1,
                textWeight: FontWeight.normal),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
      persistentFooterButtons: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          height: 100,
          width: MediaQuery.of(context).copyWith().size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Ch 4 - Igneous Rocks',
                    style: boldTextStyle(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      '25 of 32 pages',
                      style: secondaryTextStyle(),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back,
                    color: sdPrimaryColor,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: sdPrimaryColor,
                    size: 30,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
