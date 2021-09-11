import 'package:flutter/material.dart';

class PageUnavailable extends StatefulWidget {
  @override
  _PageUnavailableState createState() => _PageUnavailableState();
}

class _PageUnavailableState extends State<PageUnavailable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 1,
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Text(
            'Blogs',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Center(
          child: Text(
            "Sorry this page is currently unavailable due to \ntechnical issue. It will get directly updated here\n by 5:00PM, 3rd,May",
            textAlign: TextAlign.center,
          ),
        ));
  }
}
