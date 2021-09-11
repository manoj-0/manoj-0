import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tda_academy/utils/constants.dart';

class ArtcileDetails extends StatefulWidget {
  @override
  _ArtcileDetailsState createState() => _ArtcileDetailsState();
}

class _ArtcileDetailsState extends State<ArtcileDetails> {
  String convertanydate() {
    DateTime today = DateTime.now();
    return '${DateFormat.yMMMEd().add_jms().format(today)}';
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // print(classroom.noteslist);
    return Scaffold(
        backgroundColor: maincolor,
        appBar: AppBar(
          title: Text('Article Details'),
        ),
        body: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
// Container(width: width,height: 10,color: backgroundcolor,),
          Image.asset(
            'assets/images/crops/119.png',
          ),
          Container(
            color: backgroundcolor,
            padding: EdgeInsets.all(15),
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Artcile Title',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
// Divider(),
                SizedBox(
                  height: 9,
                ),

                Text(
                    'GATE CSE Scholarship Test- Check Result for Scholarship Worth Rs. 5 Lakhs+',
                    style: TextStyle(
                        fontSize: 16.5,
                        fontWeight: FontWeight.w600,
                        height: 1.4)),
                SizedBox(
                  height: 17,
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: 10,
            color: backgroundcolor,
          ),
          Container(
            color: backgroundcolor,
            padding: EdgeInsets.all(15),
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Description',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                  ],
                ),
// Divider(),
                SizedBox(
                  height: 9,
                ),

                Text(
                    'Wondering about what is this GATE CSE Scholarship tell all about? As you know GATE is a competetive examination held to test students',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Noto',
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                        height: 1.4)),
                SizedBox(
                  height: 17,
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: 10,
            color: backgroundcolor,
          ),
          Container(
              padding: EdgeInsets.all(0),
              color: backgroundcolor,
              width: width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('\n    Attached Files',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700)),
                      ],
                    ),
// Divider(),
                    SizedBox(
                      height: 8,
                    ),

                    Stack(
                      children: <Widget>[
                        Container(
                            width: width / 1.02,
                            margin: EdgeInsets.fromLTRB(11.0, 8, 11.0, 7.0),
                            padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.blueGrey.withOpacity(0.1),
                                  spreadRadius: 1.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                                  width: width / 1.16,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text('DummyFile.pdf',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 13.5,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2,
                                              color: Colors.black87)),
                                      SizedBox(
                                        height: 8,
                                      ),
//  notes[i]['title']==null||notes[i]['title']==''?SizedBox():Divider(color: greylightcolor,),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(6, 0, 6, 10),
                                        width: width,
                                        height: 47,
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              width: 36,
                                              child: Icon(
                                                FontAwesomeIcons.filePdf,
                                                color: red,
                                                size: 27,
                                              ),
                                            ),

                                            SizedBox(
                                              width: width / 44,
                                            ),
// ButtonWithIconOuline(buttontext: 'Preview',color: widget.isstudent==false? stafflightcolor:studentlightcolor,),
                                            Text(
                                              'View',
                                              style: TextStyle(
                                                fontSize: 12.2,
                                                fontWeight: FontWeight.w700,
                                                color: green,
                                              ),
                                            ),

                                            SizedBox(
                                              width: width / 44,
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20),
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                      Icons.download_rounded,
                                                      color: maincolor,
                                                      size: 15),
                                                )),
                                            Text(
                                              'Download',
                                              style: TextStyle(
                                                fontSize: 12.2,
                                                fontWeight: FontWeight.w700,
                                                color: maincolor,
                                              ),
                                            ),
                                            SizedBox(
                                              width: width / 94,
                                            ),

                                            // Container(width: 96,child: Row(
                                            //   children: <Widget>[
                                            //     Icon(EvaIcons.download,color:greenbuttoncolor,size: 22,),SizedBox(width: 10,),
                                            //     Text('DOWNLOAD',style: TextStyle(fontSize: 13,color: Colors.green[500]),),
                                            //   ],
                                            // )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                        Positioned(
                          top: 8.0,
                          left: 10.0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 6),
                            decoration: BoxDecoration(
                                color: cyan.withOpacity(0.1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(0),
                                ) // green shaped
                                ),
                            child: Text(
                              ' 1 ',
                              style: TextStyle(
                                  fontSize: 10.5,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      width: width,
                      height: 10,
                      color: backgroundcolor,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Posted by',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                          Divider(),
                          SizedBox(
                            height: 3,
                          ),
                          Column(children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            10.0, 10.0, 16.0, 6.0),
                                        child: CircleAvatar(
                                          radius: 17.0,
                                          backgroundImage:
                                              CachedNetworkImageProvider(
                                                  'https://icons.iconarchive.com/icons/dapino/people/256/orange-boy-icon.png'),
                                        ),
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          width: width / 1.4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'John Doe',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                'Maths Teacher',
                                                style: TextStyle(
                                                    color: grey,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                            ],
                                          )),
                                    ])),
                          ]),
                        ],
                      ),
                    ),

                    Container(
                      width: width,
                      height: 10,
                      color: backgroundcolor,
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(21, 17, 21, 6),
                      width: width,
                      height: 60,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            child: Text('8 Comments',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: grey,
                                    height: 1.4)),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: 155,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'images/comment.png',
                                    height: 23,
                                    color: stafflightcolor,
                                  ),
                                  Text('    Post a  Comment',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: black,
                                          height: 1.4)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]))
        ])));
  }

  Widget get _space => SizedBox(height: 10);

  Widget _text(String title, String value) {
    return RichText(
      text: TextSpan(
        text: '$title : ',
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: value ?? '',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
