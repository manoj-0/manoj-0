import 'package:flutter/material.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/test/option_master.dart';
import 'package:tda_academy/utils/SDUtils/SDColors.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';

class QuestionCard extends StatefulWidget {
  final String textContent;
  final String question;
  final QuestionsMaster questionsMaster;
  final Function testing;
  final Function action;
// ignore: unused_field

  QuestionCard({
    Key key,
    @required this.textContent,
    this.question,
    this.questionsMaster,
    this.testing,
    this.action,
  }) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<QuestionCard> {
  int tappedIndex;
  int correctAnswer;
  bool isSelected;
  // ignore: unused_field
  bool _canVibrate = true;
  final Iterable<Duration> pauses = [
    const Duration(milliseconds: 500),
    const Duration(milliseconds: 1000),
    const Duration(milliseconds: 500),
  ];
  List<OptionMaster> mQuestionList;
  init() async {
    bool canVibrate = await Vibrate.canVibrate;
    setState(() {
      _canVibrate = canVibrate;
    });
  }

  @override
  void initState() {
    super.initState();
    tappedIndex = -1;
    isSelected = false;
    correctAnswer = 0;

    mQuestionList = [
      OptionMaster(
        optionName: widget.questionsMaster.op1,
      ),
      OptionMaster(
        optionName: widget.questionsMaster.op2,
      ),
      OptionMaster(
        optionName: widget.questionsMaster.op3,
      ),
      OptionMaster(
        optionName: widget.questionsMaster.op4,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 25, left: 15),
          child: Text(
            widget.textContent,
            style: secondaryTextStyle(size: 14),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Text(
            widget.question,
            style: boldTextStyle(),
          ),
        ),
        Expanded(
          flex: 4,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: mQuestionList?.length,
              padding: EdgeInsets.only(top: 16.0),
              itemBuilder: (_, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: correctAnswer == index + 1 && isSelected
                        ? Colors.greenAccent
                        : isSelected && tappedIndex == index
                            ? Colors.red
                            : !isSelected
                                ? Colors.white
                                : Colors.grey[400],
                  ),
                  margin: EdgeInsets.only(top: 16, left: 16, right: 16),
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: InkWell(
                    onTap: () {
                      if (!isSelected) {
                        print(
                            "${widget.questionsMaster.answer} tapped index $index");
                        setState(() {
                          tappedIndex = index;
                          isSelected = true;
                          // print('m1 ' + tappedIndex.toString());
                          print("" + correctAnswer.toString());
                          correctAnswer =
                              int.parse(widget.questionsMaster.answer);
                          // (int.parse(widget.questionsMaster.answer) ==
                          //         index + 1)
                          //     ? correctAnswer + 1
                          //     : correctAnswer;
                          widget.testing(correctAnswer);

                          if (correctAnswer == tappedIndex + 1) {
                            widget.action();
                          } else {
                            Vibrate.vibrate();
                          }
                        });
                      }
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          child: correctAnswer == index + 1 && isSelected
                              ? Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                  size: 22,
                                )
                              : isSelected && tappedIndex == index
                                  ? Icon(
                                      Icons.radio_button_unchecked,
                                      color: sdPrimaryColor,
                                      size: 22,
                                    )
                                  : Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text(
                            mQuestionList[index].optionName,
                            style: primaryTextStyle(
                              textColor:
                                  correctAnswer == index + 1 && isSelected
                                      ? Colors.white
                                      : isSelected && tappedIndex == index
                                          ? Colors.black
                                          : !isSelected
                                              ? Colors.black
                                              : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
