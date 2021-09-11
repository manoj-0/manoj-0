import 'package:flutter/material.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class EditProfile extends StatefulWidget {
  final UserMaster userMaster;

  const EditProfile({Key key, this.userMaster}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  void initState() {
    print(widget.userMaster.phoneNumber);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: maincolor,
        titleSpacing: 0.0,
        title: Text(
          'Edit Profile',
          style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
        ),
      ),
      body: Container(),
    );
  }
}
