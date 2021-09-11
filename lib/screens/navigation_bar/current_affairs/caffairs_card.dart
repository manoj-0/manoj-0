import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:tda_academy/models/caffair/CaffairModel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class CaffairCard extends StatefulWidget {
  final CaffairModel caffairModel;

  const CaffairCard({Key key, this.caffairModel}) : super(key: key);
  @override
  _CaffairCardState createState() => _CaffairCardState();
}

class _CaffairCardState extends State<CaffairCard> {
  var unescape = HtmlUnescape();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(caffairDetail, arguments: widget.caffairModel);
      },
      child: Container(
          width: MediaQuery.of(context).size.width / 1.4,
          //  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width/30,MediaQuery.of(context).size.width/38, 2.0, MediaQuery.of(context).size.width/30,),
          margin: EdgeInsets.fromLTRB(10.0, 7.0, 0.0, 5.0),
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
          //  color: Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(0.0),
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(0.0),
                  ),
                  child: Text(widget.caffairModel.title,
                      textAlign: TextAlign.center,
                      style: kLabelStyleBold.apply(color: maincolor)),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(7.0, 9.0, 0.0, 8.0),
              //   child: Html(
              //     data: unescape.convert(
              //         widget.caffairModel.description.length > 30
              //             ? widget.caffairModel.description.substring(30)
              //             : widget.caffairModel.description),
              //     style: {
              //       "body": Style(
              //         fontSize: FontSize(18.0),
              //       ),
              //     },
              //   ),
              // ),
            ],
          )),
    );
  }
}
