import 'package:flutter/material.dart';

import 'package:tda_academy/utils/SDUtils/SDColors.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';

class QuizResult extends StatefulWidget {
  final int questionCount;
  final int correctAnswer;

  const QuizResult({Key key, this.questionCount, this.correctAnswer})
      : super(key: key);
  @override
  _QuizResultState createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: sdAppBackground,
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: EdgeInsets.only(left: 26, right: 26),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("S C O R E", style: secondaryTextStyle(size: 20)),
                Text("${widget.correctAnswer}/${widget.questionCount}",
                    style: boldTextStyle(size: 40)),

                // Image(
                //     image: AssetImage('images/smartDeck/images/sdtrophy.png'),
                //     height: size.height * 0.18,
                //     fit: BoxFit.cover),

                SizedBox(height: 50),

                Text(
                    "${widget.correctAnswer <= 5 ? "Better luck Next Time" : "Congratulations!"}",
                    style: boldTextStyle(size: 20)),
                SizedBox(height: 16),
                Text("try more quiz to sharpen your skills",
                    textAlign: TextAlign.center, style: secondaryTextStyle()),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: SDButton(
              textContent: "CLOSE",
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          )
        ],
      ),
    );
  }
}
