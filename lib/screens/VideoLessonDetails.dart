import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:tda_academy/utils/constants.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_parser/youtube_parser.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoLessonsDetails extends StatefulWidget {
  @override
  _VideoLessonsDetailsState createState() => _VideoLessonsDetailsState();
}

class _VideoLessonsDetailsState extends State<VideoLessonsDetails> {
  // ignore: unused_field
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  YoutubePlayerController _controller;
  TextEditingController _idController;
  TextEditingController _seekToController;

  // ignore: unused_field
  PlayerState _playerState;
  // ignore: unused_field
  YoutubeMetaData _videoMetaData;
  // ignore: unused_field
  double _volume = 100;
  // ignore: unused_field
  bool _muted = false;
  bool _isPlayerReady = false;
  bool iskeyboarddisable = false;
  bool isloading = false;
  // ignore: unused_field
  List<String> _ids = [
    '78',
  ];
  String idnew;
  double messageboxpadding = 7;
  String bloggername;
  String bloggerphotourl;
  bool isstaff = false;
  @override
  void initState() {
    super.initState();

    String id = getIdFromUrl('https://www.youtube.com/watch?v=AVYfyTvc9KY');
    setState(() {
      idnew = id;
    });
    _controller = YoutubePlayerController(
      initialVideoId: id,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  String convertanydate(DateTime today) {
    return '${DateFormat.yMMMEd().add_jms().format(today)}';
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Video Lesson'),
        ),
        body: ListView(children: <Widget>[
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
            topActions: <Widget>[
              SizedBox(width: 8.0),
            ],
            onReady: () {
              _isPlayerReady = true;
            },
            onEnded: (data) {
              _controller.load(idnew);
            },
          ),
          Container(
            padding: EdgeInsets.fromLTRB(11, 7, 11, 9),
            width: width,
            color: greylightcolor.withOpacity(0.6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Current Affairs - Video Lessons',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.2)),
                Text('Posted on:   ' + convertanydate(DateTime.now()),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        height: 1.6)),
                Divider(),
                Text('Credits: ' + 'ABCD',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        height: 1.6)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(21, 17, 21, 6),
            width: width,
            height: 50,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Text('6 Comments',
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
// Image.asset('images/comment.png',height:23,color: maincolor),
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

// Divider(height: 8,color: grey.withOpacity(0.7),),
// Container(padding: EdgeInsets.fromLTRB(16, 5, 16, 8),width: width,height: 40,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[
// Container(width: 85,child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
// Image.asset('images/like.png',height:23),Text('   Like',style:TextStyle(fontSize: 12,fontWeight:FontWeight.w500,color: black,height: 1.4)),
// ],),),
// InkWell(onTap: (){
//   Navigator.push(context, PageTransition(duration: Duration(microseconds: 2000),type: PageTransitionType.rightToLeft, child:Comments(id:widget.id ,thumbnail: widget.thumbnail,title: widget.title,phonenumber: '+919859543919',)));

// },child:  Container(width: 85,child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
// Image.asset('images/comment.png',height:23),Text('   Comment',style:TextStyle(fontSize: 12,fontWeight:FontWeight.w500,color: black,height: 1.4)),
// ],),),),
// Container(width: 85,child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
// Image.asset('images/share.png',height:23),Text('   Share',style:TextStyle(fontSize: 12,fontWeight:FontWeight.w500,color: black,height: 1.4)),
// ],),),

// ],),),
          SizedBox(
            height: 5,
          ),
          Container(
            width: width,
            height: 20,
            color: backgroundcolor,
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
                    Text('Video Description',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700)),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 3,
                ),
                Text('This is a demo description',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        height: 1.4)),
                SizedBox(
                  height: 17,
                ),
                Center(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 0.3,
                    onPressed: () {
                      _launchURL(
                          'https://codecanyon.net/item/smartlearn-online-learning-app-exam-preparation-app-ui-kit/29385308');
                    },
                    color: green,
                    child: Text(
                      'Open any Link',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 1,
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
                            fontSize: 15, fontWeight: FontWeight.w700)),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(10.0, 10.0, 16.0, 6.0),
                              child: CircleAvatar(
                                radius: 17.0,
                                backgroundImage: CachedNetworkImageProvider(
                                    'https://icons.iconarchive.com/icons/dapino/people/256/orange-boy-icon.png'),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                width: width / 1.4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(
            height: 10,
          ),
        ]));
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
