import 'package:flutter/material.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/query/QueryAnswer.dart';
import 'package:tda_academy/utils/SDUtils/SDColors.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class MaterialQuestion extends StatefulWidget {
  final QueryMaster queryMaster;

  const MaterialQuestion({Key key, this.queryMaster}) : super(key: key);
  @override
  _MaterialQuestionState createState() => _MaterialQuestionState();
}

class _MaterialQuestionState extends State<MaterialQuestion> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => CoursedetailsInner(),
          //   ),
          // );
        },
        child: expnasionTile(widget.queryMaster));
  }

  Widget expnasionTile(QueryMaster queryMaster) {
    return ExpansionTile(
      childrenPadding: EdgeInsets.all(0),
      tilePadding: EdgeInsets.all(0),
      initiallyExpanded: true,
      title: Text(
        queryMaster.name,
        style: kBoldLabelS.apply(color: maincolor),
      ),
      children: [
        answerList(queryMaster.answers),
      ],
    );
  }

  Widget answerList(List<QueryAnswer> queryAnswer) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return answerCard(queryAnswer[index]);
      },
      itemCount: queryAnswer.length,
    );
  }

  Widget answerCard(QueryAnswer queryAnswer) {
    return ListTile(
        // trailing: Icon(
        //   Icons.arrow_forward_ios,
        //   size: 15,
        // ),
        title: Container(
          child: Text(
            queryAnswer.answer,
            style: kLabelStyle.apply(color: kBlack),
          ),
        ),
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => CoursedetailsInner(),
          //   ),
          // );
        });
  }
}
