import 'package:flutter/material.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class TestCard extends StatefulWidget {
  final TestMaster testMaster;

  const TestCard({Key key, this.testMaster}) : super(key: key);
  @override
  _TestCardState createState() => _TestCardState();
}

class _TestCardState extends State<TestCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(testDetail, arguments: widget.testMaster);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2.4,
        //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
        margin: EdgeInsets.fromLTRB(7.0, 7.0, 3.0, 5.0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFeff0f3), width: 1),
          color: Color(0xFFffffff),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xffe7edfb),
              blurRadius: 1.0,
              offset: Offset(0.1, 0.1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  flex: 2,
                  child: Text(widget.testMaster.title,
                      style: kLabelStyleBold.apply(
                          color: maincolor, fontSizeDelta: 6)),
                ),
                Image.asset(
                  'assets/images/quiz2.png',
                  height: 30,
                ),
                SizedBox(
                  width: 8.0,
                ),
              ],
            ),
            // Divider(
            //   height: 2.0,
            // ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
                    child: Text(
                      widget.testMaster.description,
                      style: kLabelStyle.apply(color: kBlack, fontSizeDelta: 4),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.8,
                  //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),

                  padding: EdgeInsets.fromLTRB(3.0, 6.0, 3.0, 3.0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(testDetail, arguments: widget.testMaster);
                    },
                    color: kBlack,
                    textColor: Colors.white,
                    child: Text("start".toUpperCase(),
                        style: kLabelStyleBold.apply(
                            color: kWhite, fontSizeDelta: 4)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                        side: BorderSide(color: kBlack)),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
