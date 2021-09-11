import 'package:flutter/material.dart';
import 'package:tda_academy/utils/constants.dart';

class Logoutscreen extends StatefulWidget {
  @override
  _LogoutscreenState createState() => _LogoutscreenState();
}

class _LogoutscreenState extends State<Logoutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(
            color: Colors.black87, //change your color here
          ),
          title: Text(
            'Logged Out',
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
        ),
        body: Container(
            color: Color(0xfff2f2f2),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 40, 40, 90),
                  child: Text(
                    "You have succesfully Signed Out of app.\n\nPlease Restart the app and Sign in again to continue",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: grey),
                  ),
                ),
                Image.asset(
                  'images/bye.png',
                  fit: BoxFit.fitWidth,
                ),
              ],
            )));
  }
}
