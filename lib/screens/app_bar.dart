import 'package:flutter/material.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/utils/theme_constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  final String title;

  const AppBarWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw AppBar(
      backgroundColor: maincolor,
      titleSpacing: 0.0,
      title: Text(
        "   ${title}",
        style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
      ),
    );
    ;
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
