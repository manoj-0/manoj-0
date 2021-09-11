import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/screens/dashboard.dart';
import 'package:tda_academy/screens/firebase_notification/fb_notification.dart';

import 'package:tda_academy/screens/onboard/on_boarding.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  /**
   * fb notification
   */
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  void fbNotificationConfig() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      onBackgroundMessage: myBackgroundMessageHandler,
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
            sound: true, badge: true, alert: true, provisional: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
    _firebaseMessaging.getToken().then((String token) {
      assert(token != null);
      print("FB Messaging token: $token");
    });
    _firebaseMessaging.subscribeToTopic("matchscore");
  }

  /**
   * end of fb notification
   */
  String _accessToken;
  String _userType;
  int _userId;
  bool hasSeen;
  @override
  void initState() {
    _accessToken =
        PreferenceUtils.getString(access_token, defValue: def_val_sf);
    _userType = PreferenceUtils.getString(user_type);
    _userId = PreferenceUtils.getInt(user_id);
    hasSeen = PreferenceUtils.getBool(has_seen);

    print(_accessToken);
    fbNotificationConfig();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => null,
      child: Scaffold(
        body: PageView(
          pageSnapping: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[(hasSeen) ? Dashboard() : OnBoardingWidget()],
        ),
      ),
    );
  }
}
