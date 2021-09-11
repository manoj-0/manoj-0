import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tda_academy/utils/constants.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  String companyname;
  String companytagline;
  String companyemail;
  String companywebsite;
  String companydesc;
  String companyphone1;
  String companyphone2;
  String companyphotourl;
  String companyfb;
  String companywhatsapp;
  String companytwitter;
  String companyinsta;
  String companylocation;
  bool isloading = true;

  @override
  void initState() {
    super.initState();
  }

  bool isstudent = true;
//write to app path

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Contact Us',
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        ),
        body:
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 2.0),
              elevation: 0.0,
              color: Color(0xFFFFFFFF),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: grey.withOpacity(0.5),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(companyphotourl ??
                                  'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: width / 1.7,
                              padding: EdgeInsets.fromLTRB(15.0, 4.0, 0.0, 3.0),
                              child: Text(
                                companyname,
                                style: TextStyle(
                                    color: Color(0xFF10636F),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19.0),
                              ),
                            ),
                            Container(
                              width: width / 1.8,
                              padding: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 3.0),
                              child: Text(companytagline,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color(0xFF8FA4BD),
                                      fontFamily: 'HindMadurai',
                                      fontWeight: FontWeight.w400,
                                      height: 1.3,
                                      fontSize: 13.2)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.yellow[700],
                  ),
                  Container(
                    width: width / 1.09,
                    padding: EdgeInsets.fromLTRB(15.0, 0.0, 10.0, 13.0),
                    child: Text(companydesc,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xFF8FA4BD),
                            fontFamily: 'HindMadurai',
                            fontWeight: FontWeight.w400,
                            fontSize: 13.2)),
                  ),
                  Divider(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      companyfb == '' || companyfb == null
                          ? SizedBox()
                          : Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Container(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                    ),
                                    Container(
                                        child: Icon(FontAwesomeIcons.facebook,
                                            size: 35, color: Colors.blue)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.0)),
                                    Text('/ ' + companyfb,
                                        style: TextStyle(
                                            color: Color(0xFF2E3A6A),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.2)),
                                  ],
                                ),
                              ),
                            ),
                      companyinsta == '' || companyinsta == null
                          ? SizedBox()
                          : Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Container(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                    ),
                                    Container(
                                        child: Icon(FontAwesomeIcons.instagram,
                                            size: 35, color: Colors.pink)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.0)),
                                    Text('/ ' + companyinsta,
                                        style: TextStyle(
                                            color: Color(0xFF2E3A6A),
                                            fontFamily: 'HindMadurai',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.2)),
                                  ],
                                ),
                              ),
                            ),
                      companytwitter == '' || companytwitter == null
                          ? SizedBox()
                          : Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Container(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                    ),
                                    Container(
                                        child: Icon(FontAwesomeIcons.twitter,
                                            size: 35, color: Colors.blue[400])),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.0)),
                                    Text('/ ' + companytwitter,
                                        style: TextStyle(
                                            color: Color(0xFF2E3A6A),
                                            fontFamily: 'HindMadurai',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.2)),
                                  ],
                                ),
                              ),
                            ),
                      companyemail == '' || companyemail == null
                          ? SizedBox()
                          : Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Container(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                    ),
                                    Container(
                                        child: Icon(Icons.email,
                                            size: 35,
                                            color: Colors.orange[400])),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.0)),
                                    Text('  ' + companyemail,
                                        style: TextStyle(
                                            color: Color(0xFF2E3A6A),
                                            fontFamily: 'HindMadurai',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.2)),
                                  ],
                                ),
                              ),
                            ),
                      companywebsite == '' || companywebsite == null
                          ? SizedBox()
                          : Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Container(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                    ),
                                    Container(
                                        child: Icon(Icons.web,
                                            size: 35, color: Colors.cyan[500])),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.0)),
                                    Text('  ' + companywebsite,
                                        style: TextStyle(
                                            color: Color(0xFF2E3A6A),
                                            fontFamily: 'HindMadurai',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.2)),
                                  ],
                                ),
                              ),
                            ),
                      companywhatsapp == '' || companywhatsapp == null
                          ? SizedBox()
                          : Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Container(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                    ),
                                    Container(
                                        child: Icon(FontAwesomeIcons.whatsapp,
                                            size: 35,
                                            color: Colors.green[500])),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.0)),
                                    Text('+91 - ' + companywhatsapp,
                                        style: TextStyle(
                                            color: Color(0xFF2E3A6A),
                                            fontFamily: 'HindMadurai',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.2)),
                                  ],
                                ),
                              ),
                            ),
                      companyphone1 == '' || companyphone1 == null
                          ? SizedBox()
                          : Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Container(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                    ),
                                    Container(
                                        child: Icon(Icons.phone,
                                            size: 32, color: Colors.red[300])),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.0)),
                                    Text(' +91 - ' + companyphone1,
                                        style: TextStyle(
                                            color: Color(0xFF2E3A6A),
                                            fontFamily: 'HindMadurai',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.2)),
                                  ],
                                ),
                              ),
                            ),
                      companyphone2 == '' || companyphone2 == null
                          ? SizedBox()
                          : Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Container(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 40.0),
                                    ),
                                    Container(
                                        child: Icon(Icons.phone,
                                            size: 32,
                                            color: Colors.orange[300])),
                                    Padding(
                                        padding: EdgeInsets.only(left: 17.0)),
                                    Text(' +91 - ' + companyphone2,
                                        style: TextStyle(
                                            color: Color(0xFF2E3A6A),
                                            fontFamily: 'HindMadurai',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.2)),
                                  ],
                                ),
                              ),
                            ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                  ),

                  // Container(
                  //   padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 3.0),
                  //   child: Text('Interesting Facts',style: TextStyle(color: Color(0xFF10636F),fontFamily:'HindMadurai',fontWeight: FontWeight.w600,fontSize: 22.0),),
                  // ),
                  // Container(
                  //   padding: EdgeInsets.only(bottom: 12.0),
                  //   child: Text('Read Daily Unknown Facts from around the World',style: TextStyle(color: Color(0xFF8FA4BD),fontFamily:'HindMadurai',fontWeight: FontWeight.w400,fontSize: 14.2)),
                  // ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4.0),
            ),
            Card(
              elevation: 0.0,
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                child: ListTile(
                  leading: new Icon(
                    Icons.message,
                    color: Colors.purple,
                  ),
                  subtitle: Text(
                    'Leave a Comment in Playstore',
                    style: TextStyle(color: Color(0xFFa7abb9)),
                  ),
                  title: new Text(
                    'Report Issue in App',
                    style: TextStyle(color: Color(0xFF222C50)),
                  ),
                  onTap: () {},
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Card(
              elevation: 0.0,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 17.0),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 0.0),
                    child: Text('Office Address:',
                        style: TextStyle(
                            color: Color(0xFF2E3A6A),
                            fontFamily: 'HindMadurai',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.2)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(17.0, 2.0, 17.0, 17.0),
                    child: Text(companylocation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF2E3A6A).withOpacity(0.6),
                            fontFamily: 'HindMadurai',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.2)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
//
            Padding(
              padding: EdgeInsets.all(0.0),
            ),
          ],
        ));
  }
}
