import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tda_academy/screens/navigation_bar/home/offer_crousel.dart';
import 'package:tda_academy/screens/navigation_bar/home/popular-course_four.dart';
import 'package:tda_academy/screens/navigation_bar/home/popular_course.dart';
import 'package:tda_academy/screens/navigation_bar/home/popular_course_five.dart';
import 'package:tda_academy/screens/navigation_bar/home/popular_course_three.dart';
import 'package:tda_academy/screens/navigation_bar/home/popular_course_two.dart';

import 'package:tda_academy/utils/theme_constants.dart';

class HomepageB extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomepageB> {
  List<String> reportList = [
    "BANK CLERK",
    "BANK PO",
    "BANK SO",
    "INSURANCE",
    "CENTRAL WAREHOUSING CORP.",
    "NABARD",
    "RBI"
  ];

  List<String> reportList2 = [
    "BPSSC",
    "DEFENCE",
    "DELHI POLICE",
    "FOOD CORP. OF INDIA",
    "HSSC",
    "RAILWAYS",
    "SSC",
    "UPPRPB",
  ];
  List<String> reportList3 = [
    "MPPSC",
    "RPSC",
    "UPPSC",
    "UPS",
  ];

  List<String> selectedReportList = [];

  _showReportDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //Here we will build the content of the dialog
          return AlertDialog(
            contentPadding: EdgeInsets.all(10.0),
            title: Text(
              "Exam Categories",
              style: TextStyle(
                fontFamily: 'mvb',
                color: black,
                fontSize: 19.0,
              ),
            ),
            content: Container(
              width: double.maxFinite,
              child: ListView(
                padding: EdgeInsets.all(5.0),
                children: <Widget>[
                  Text(
                    "Banking & Insurance",
                    style: TextStyle(
                      fontFamily: 'mvb',
                      color: maincolor,
                      fontSize: 15.0,
                    ),
                  ),
                  MultiSelectChip(
                    reportList,
                    onSelectionChanged: (selectedList) {
                      setState(() {
                        selectedReportList = selectedList;
                      });
                    },
                  ),
                  Divider(),
                  Text(
                    "SSC & Railways",
                    style: TextStyle(
                      fontFamily: 'mvb',
                      color: maincolor,
                      fontSize: 15.0,
                    ),
                  ),
                  MultiSelectChip2(
                    reportList2,
                    onSelectionChanged: (selectedList) {
                      setState(() {
                        selectedReportList = selectedList;
                      });
                    },
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Apply"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 6.0),
                child: Text(
                  ' SSC ',
                  style: TextStyle(
                      fontFamily: 'mvb',
                      color: kBlack,
                      fontSize: 17.0,
                      height: 0.6),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2.0),
                child: IconButton(
                  icon: Icon(
                    EvaIcons.arrowDown,
                    color: kWhite,
                  ),
                  onPressed: () {
                    _showReportDialog();
                  },
                ),
              ),
            ],
          ),
          backgroundColor: maincolor,
          actions: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.0,
                  ),
                  child: IconButton(
                      icon: Icon(
                        EvaIcons.bellOutline,
                        size: 20,
                      ),
                      color: kWhite,
                      onPressed: () {}),
                ),
                Positioned(
                  right: 10,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 13,
                      minHeight: 13,
                    ),
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            // IconButton(
            //     icon: Icon(
            //       Icons.account_circle,
            //       size: 21,
            //     ),
            //     color: kWhite,
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => RegistrationPage()));
            //     }),
          ],
        ),

//     drawer:  Drawer(
//         child:ListView(padding: const EdgeInsets.all(0.0),
//           children: <Widget>[

//             UserAccountsDrawerHeader(margin: EdgeInsets.all(5.0),currentAccountPicture: Image.asset('images/ic_launcher.png'),
//               accountEmail: Text("All-in-one NCERT app ",textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF8689A4),fontFamily:'HindMadurai',fontWeight: FontWeight.w400,fontSize: 13.0),),

//               accountName: Text("NCERT Master",textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF31355B),fontFamily:'HindMadurai',fontWeight: FontWeight.w600,fontSize: 20.0),),

//              ),

//             ListTile(trailing: Icon(Icons.new_releases,color: Color(0xFF8689A4),),
//                title: Text("Interesting Facts",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF222c50),fontFamily:'HindMadurai',fontWeight: FontWeight.w500,fontSize: 16.0),),
//                 onTap: () => Navigator.of(context).popAndPushNamed("/f"),
//              ), ListTile(trailing: Icon(Icons.thumb_up,color: Color(0xFF8689A4),),
//                title: Text("Great Thoughts",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF222c50),fontFamily:'HindMadurai',fontWeight: FontWeight.w500,fontSize: 16.0),),
//                 onTap: () => Navigator.of(context).popAndPushNamed("/th"),
//              ),
//               ListTile(trailing: Icon(Icons.bubble_chart,color: Color(0xFF8689A4),),
//                title: Text("Kids Zone",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF222c50),fontFamily:'HindMadurai',fontWeight: FontWeight.w500,fontSize: 16.0),),
//                 onTap: () => Navigator.of(context).popAndPushNamed("/kids"),
//              ), ListTile(trailing: Icon(Icons.class_,color: Color(0xFF8689A4),),
//                title: Text("Class Wise Contents",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF222c50),fontFamily:'HindMadurai',fontWeight: FontWeight.w500,fontSize: 16.0),),
//                 onTap: () => Navigator.of(context).popAndPushNamed("/e"),
//              ), ListTile(trailing: Icon(Icons.library_books,color: Color(0xFF8689A4),),
//                title: Text("Previous Years Papers",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF222c50),fontFamily:'HindMadurai',fontWeight: FontWeight.w500,fontSize: 16.0),),
//                 onTap: () => Navigator.of(context).popAndPushNamed("/cPrev"),
//              ),
//              ListTile(trailing: Icon(Icons.call,color: Color(0xFF8689A4),),
//                title: Text("Contact Us",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF222c50),fontFamily:'HindMadurai',fontWeight: FontWeight.w500,fontSize: 16.0),),
//                 onTap: () => Navigator.of(context).popAndPushNamed("/contact"),
//              ),
//               ListTile(trailing: Icon(Icons.pages,color: Color(0xFF8689A4),),
//                title: Text("Terms & Conditions",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF222c50),fontFamily:'HindMadurai',fontWeight: FontWeight.w500,fontSize: 16.0),),
//                 onTap: () => Navigator.of(context).popAndPushNamed("/terms"),
//              ),ListTile(trailing: Icon(Icons.lock,color: Color(0xFF8689A4),),
//                title: Text("Privacy Policy",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF222c50),fontFamily:'HindMadurai',fontWeight: FontWeight.w500,fontSize: 16.0),),
//                 onTap: () => Navigator.of(context).popAndPushNamed("/policy"),
//              ),
//             Divider(),
//             Padding(padding: EdgeInsets.only(top:12.0),),
// // Row(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[
// // Padding(padding: EdgeInsets.only(left:15.0),),
// // OutlineButton(splashColor: Colors.white,hoverColor: Colors.white,highlightColor: Colors.white,child: Text('RATE APP',style: TextStyle(color: Color(0xFF8689A4),fontFamily:'HindMadurai',fontWeight: FontWeight.w600,fontSize: 14.0),),onPressed: (){LaunchReview.launch();HapticFeedback.vibrate();},  ),
// // Padding(padding: EdgeInsets.only(left:65.0),),

// // OutlineButton(splashColor: Colors.white,hoverColor: Colors.white,highlightColor: Colors.white,child: Text('SHARE APP',style: TextStyle(color: Color(0xFF8689A4),fontFamily:'HindMadurai',fontWeight: FontWeight.w600,fontSize: 14.0),),onPressed: (){Share.share('I have found the best NCERT App for class 1 to 12. It has NCERT Solutions, Textbooks, Notes, CBSE Sample Papers, Prev. Years Papers, Scholarships, Quiz & Facts.  Do use & *Share* it with everyone. \n\nDOWNLOAD now \n*NCERT Master App* \nhttps://play.google.com/store/apps/details?id=com.ncert.ncert_master');    HapticFeedback.vibrate();     },  ),

// // ],),
//   Padding(padding: EdgeInsets.only(top:5.0),),
// ListTile(
//                title: Text("App Version:  1.0.4",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF8689A4),fontFamily:'HindMadurai',fontWeight: FontWeight.w400,fontSize: 14.0),),
//                 onTap: () => Navigator.of(context).pop(),
//              ),

// // ListTile(trailing: Icon(Icons.close),
// //                title: Text("CLOSE",textAlign: TextAlign.left,style: TextStyle(color: Color(0xFF51B298),fontFamily:'HindMadurai',fontWeight: FontWeight.w600,fontSize: 16.0),),
// //                 onTap: () => Navigator.of(context).pop(),
// //              ),

// SizedBox(height: 65.0,)
//           ],
//         ),

//         ),

        body: ListView(
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 0.0),
                child: SizedBox(
                  height: 170.0,
                  width: MediaQuery.of(context).size.width,
                  child: OfferCrousel(),
                )),
// ignore: todo
//TODO:--------------------------------------------- Popular courses  ------------------------------------------
            PopularCourse(),

// ignore: todo
//TODO:--------------------------------------------- Popular courses  ------------------------------------------
            PopularCourseTwo(),

// ignore: todo
//TODO:--------------------------------------------- Popular courses  ------------------------------------------
            PopularCourseThree(),

// ignore: todo
//TODO:--------------------------------------------- Popular courses  ------------------------------------------
            PopularCourseFour(),

// ignore: todo
//TODO:--------------------------------------------- Popular courses  ------------------------------------------
            PopularCourseFive(),
          ],
        ));
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = [];
  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          disabledColor: kBlack,
          selectedColor: kGolden,
          label: Text(
            item,
            style: TextStyle(
              color: whitedim,
            ),
          ),
          backgroundColor: kBlack.withOpacity(0.6),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}

class MultiSelectChip2 extends StatefulWidget {
  final List<String> reportList2;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip2(this.reportList2, {this.onSelectionChanged});

  @override
  _MultiSelectChip2State createState() => _MultiSelectChip2State();
}

class _MultiSelectChip2State extends State<MultiSelectChip2> {
  // String selectedChoice = "";
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList2.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          disabledColor: grey,
          selectedColor: maincolor,
          label: Text(
            item,
            style: TextStyle(
              color: whitedim,
            ),
          ),
          backgroundColor: grey.withOpacity(0.6),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}
