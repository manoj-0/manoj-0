import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/test/testbloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/test/option_master.dart';
import 'package:tda_academy/screens/error_ui.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/navigation_bar/practice/QuestionCard.dart';

import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/SDUtils/SDColors.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

// ignore: must_be_immutable
class QuizExamScreen extends StatefulWidget {
  final TestMaster testMaster;

  String name;
  String image;
  Color startColor;
  Color endColor;

  QuizExamScreen({Key key, this.testMaster}) : super(key: key);

  //QuizExamScreen([this.name, this.image, this.startColor, this.endColor]);

  @override
  _QuizExamScreenState createState() => _QuizExamScreenState();
}

class _QuizExamScreenState extends State<QuizExamScreen> {
  int correctAnswer = 0;
  int correct = 0;
  testCallback(message) {
    setState(() {
      // correctAnswer += message;
      // // ignore: unnecessary_brace_in_string_interps
      // print("hhh${correctAnswer} hey my name avi");
    });
  }

  int questionCount = 1;

  int pageChanged = 0;
  PageController pageController = PageController();

  // ignore: close_sinks
  TestBloc _testBloc;
  int questionCounter = 1;
  String accessToken;
  int userId;

  @override
  // ignore: must_call_super
  void initState() {
    //_startTimer();
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    _testBloc = TestBloc()
      ..add(LoadAllQuestionEvent(
          accessToken: accessToken, testId: widget.testMaster.id));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _testBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            "Quiz",
            style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                onPageChanged: (value) {
                  setState(() => pageChanged = value);
                },
                itemBuilder: (context, position) {
                  // if (position == widget.testMaster.questionMaster.length)
                  //   return null;
                  return Container(
                    child: BlocBuilder<TestBloc, TestState>(
                      builder: (context, state) {
                        if (state is TestLoading) {
                          print("rendering body");
                          return LoadingUi();
                        } else if (state is TestQuestionsLoaded) {
                          questionCount =
                              state.testMaster.questionMaster.length;
                          if (questionCount > 0) {
                            return QuestionCard(
                                textContent:
                                    "QUESTION ${position + 1} of ${state.testMaster.questionMaster.length}",
                                question: state.testMaster
                                    .questionMaster[position].question,
                                questionsMaster:
                                    state.testMaster.questionMaster[position],
                                testing: testCallback,
                                action: correctUpdate);
                          } else {
                            return ErrorUi(
                              message: "No question found",
                            );
                          }
                        } else {
                          return Container();
                        }
                      },
                    ),
                  );
                },
              )),
            ),
          ],
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
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.testMaster.title,
                        style: boldTextStyle(),
                      ),
                      // Container(
                      //   margin: EdgeInsets.only(top: 10),
                      //   child: Text(
                      //     widget.testMaster.description,
                      //     style: secondaryTextStyle(),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // GestureDetector(
                    //   onTap: () {
                    //     if (pageChanged >= 0) {
                    //       pageChanged = pageChanged - 1;
                    //       pageController.animateToPage(pageChanged,
                    //           duration: Duration(milliseconds: 500),
                    //           curve: Curves.ease);
                    //     }
                    //   },
                    //   child: Icon(
                    //     Icons.arrow_back,
                    //     color: sdPrimaryColor,
                    //     size: 30,
                    //   ),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    GestureDetector(
                      onTap: () {
                        pageChanged = pageChanged + 1;
                        if (pageChanged >= questionCount) {
                          pageChanged = 0;
                          // finish(context);
                          Map<String, Object> parameters = new HashMap();
                          parameters['total_question'] = questionCount;
                          parameters['correct_answer'] = correct;
                          Navigator.of(context).pushReplacementNamed(
                            resultRoute,
                            arguments: parameters,
                          );
                        } else {
                          pageController.animateToPage(pageChanged,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        }
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: sdPrimaryColor,
                        size: 30,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  correctUpdate() {
    correct++;
    print('result' + correct.toString());
  }
}
