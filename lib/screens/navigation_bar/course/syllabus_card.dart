import 'package:flutter/material.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/utils/SDUtils/SDColors.dart';
import 'package:tda_academy/utils/SDUtils/SDStyle.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class SyllabusCard extends StatefulWidget {
  final SyllabusMaster syllabusMaster;

  const SyllabusCard({Key key, this.syllabusMaster}) : super(key: key);
  @override
  _SyllabusCardState createState() => _SyllabusCardState();
}

class _SyllabusCardState extends State<SyllabusCard> {
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
        child: expnasionTile(widget.syllabusMaster));
  }

  Widget expnasionTile(SyllabusMaster syllabusMaster) {
    return ExpansionTile(
      childrenPadding: EdgeInsets.all(0),
      tilePadding: EdgeInsets.all(0),
      initiallyExpanded: true,
      title: Text(
        syllabusMaster.name,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      children: [
        materialList(syllabusMaster.materials),
      ],
    );
  }

  Widget materialList(List<MaterialMaster> materials) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return materialCard(materials[index]);
      },
      itemCount: materials.length,
    );
  }

  Widget materialCard(MaterialMaster materialMaster) {
    return ListTile(
        // trailing: Icon(
        //   Icons.arrow_forward_ios,
        //   size: 15,
        // ),
        title: Container(
          child: Text(
            materialMaster.title,
            style: Theme.of(context).textTheme.caption,
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

  Widget dummyView(SyllabusMaster syllabusMaster) {
    return Container(
      margin: EdgeInsets.only(top: 0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  syllabusMaster.name,
                  style: boldTextStyle(size: 16),
                  maxLines: 2,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                ),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 5),
                  child: Text(
                    widget.syllabusMaster.desc,
                    style: secondaryTextStyle(size: 12),
                  ),
                ),
              ],
            ),
          ),
          Container(
              child: IconButton(
            onPressed: () {},
            color: syllabusMaster.flags.substring(0, 1) == "1"
                ? sdSecondaryColorGreen.withOpacity(0.7)
                : Colors.grey,
            icon: Icon(Icons.check_circle),
          ))
        ],
      ),
    );
  }
}
