import 'package:carousel_slider/carousel_slider.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/utils/theme_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tda_academy/models/on_boarding.dart';

class OnBoardingWidget extends StatefulWidget {
  @override
  _OnBoardingWidgetState createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  int _current = 0;
  OnBoardingList _onBoardingList;
  @override
  void initState() {
    _onBoardingList = new OnBoardingList();
    PreferenceUtils.getString(access_token);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              items: _onBoardingList.list.map((OnBoarding boarding) {
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            boarding.image,
                            width: 500,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                boarding.title,
                                textAlign: TextAlign.center,
                                style: kBoldLabel.apply(color: kDark),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .8,
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                boarding.description,
                                textAlign: TextAlign.center,
                                style: kBoldLabelS.apply(color: kGrey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.only(left: 12.0, right: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  PreferenceUtils.putBool(has_seen, true);
                  Navigator.of(context).pushReplacementNamed(dashboardRoute);
                },
                child: Text("Skip", style: kBoldLabel),
              ),
              Container(
                width: 110.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: _onBoardingList.list.map((OnBoarding boarding) {
                    return Container(
                      width: 30.0,
                      height: 3.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          color: _current ==
                                  _onBoardingList.list.indexOf(boarding)
                              ? kThemePrimaryColor
                              : Theme.of(context).hintColor.withOpacity(0.2)),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
