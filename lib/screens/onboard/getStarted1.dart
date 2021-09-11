import 'package:flutter/material.dart';
import 'package:tda_academy/utils/constants.dart';

class GetStarted1 extends StatefulWidget {
  @override
  _GetStarted1State createState() => _GetStarted1State();
}

class _GetStarted1State extends State<GetStarted1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: Image(
              image: AssetImage('assets/images/f1.png'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Search Course',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                    fontFamily: "Poppins"),
              ),
              Text(
                'Get handpicked courses and \n lots of others things',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    fontFamily: "Poppins"),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 12.0, right: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(dashboardRoute);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        fontFamily: "Poppins"),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 3,
                      color: Theme.of(context).accentColor,
                    ),
                    Container(
                      width: 50,
                      height: 3,
                      color: Color(0xdddddddd),
                    ),
                    Container(
                      width: 50,
                      height: 3,
                      color: Color(0xdddddddd),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
