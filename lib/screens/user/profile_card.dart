import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/widget/circular_image.dart';

class ProfileCard extends StatefulWidget {
  final File imageMaster;
  final UserMaster userMaster;
  final bool img;
  final Function() onMetaTap;

  const ProfileCard(
      {Key key, this.imageMaster, this.userMaster, this.img, this.onMetaTap})
      : super(key: key);
  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              widget.onMetaTap();
            },
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: renderuserImage(widget.img, widget.userMaster),
            ),
          ),
          renderProfileCard(widget.userMaster),
        ],
      ),
    );
  }

  Widget renderProfileCard(UserMaster userMaster) {
    //print("${userMaster.createdAt} user created at");
    DateTime tempDate =
        new DateFormat("yyyy-MM-dd").parse(userMaster.createdAt);
    return Container(
      width: MediaQuery.of(context).size.width / 1.7,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
              width: MediaQuery.of(context).size.width / 1.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    userMaster.name != null ? userMaster.name : "",
                    style: kLabelStyle.apply(color: kBlack),
                  ),
                  new SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        size: 14,
                        color: kBlack,
                      ),
                      Text(
                          userMaster.phoneNumber != null
                              ? userMaster.phoneNumber
                              : "",
                          style: kLabelStyle.apply(color: kBlack)),
                    ],
                  ),
                ],
              )),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
            decoration: BoxDecoration(
                color: black.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ) // green shaped
                ),
            child: Text(
                "  Active since  ${DateFormat.yMMMd().format(tempDate)}   ",
                textAlign: TextAlign.center,
                style: kLabelStyle.apply(color: kBlack)),
          ),
          SizedBox(
            height: 7.0,
          ),
        ],
      ),
    );
  }

  Widget renderuserImage(bool userImage, UserMaster userMaster) {
    if (widget.imageMaster != null) {
      return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: kWhite,
          border: Border.all(color: maincolor, width: 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.file(widget.imageMaster, fit: BoxFit.cover),
        ),
      );
    } else {
      //print("$imageUrl user image avl $widget.imageMaster");
      return CircularImage(
        color: maincolor,
        height: 100,
        width: 100,
        radius: 50,
        imageUrl: userImage
            ? "${course_image_url}"
                "${userMaster.imageMaster.imageUrl}"
            : "${course_image_url}"
                "logo.jpeg",
      );
    }
  }
}
