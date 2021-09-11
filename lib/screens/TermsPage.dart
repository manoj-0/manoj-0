import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart' show ByteData, rootBundle;

import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:tda_academy/config.dart';

class TermsPage extends StatefulWidget {
  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  //read and write

  bool isready = false;
  String path = '';
  @override
  void initState() {
    super.initState();
    loadPdf();
    PhoneApp.sharedPreferences.getString('isstaff') == 'false' ||
            PhoneApp.sharedPreferences.getString('isstaff') == null
        ? isstudent = true
        : isstudent = false;
  }

  loadPdf() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    File tempFile = File('$tempPath/terms_smartlearn.pdf');
    ByteData bd = await rootBundle.load('assets/terms.pdf');
    await tempFile.writeAsBytes(bd.buffer.asUint8List(), flush: true).then((v) {
      setState(() {
        path = tempFile.path;
        isready = true;
      });
    });

    //   if (!mounted) return;

    //   setState(() {});
  } // }

  bool isstudent = true;
//write to app path
  Future<void> writeToFile(ByteData data, String path) async {
    var bytes = await rootBundle.load("assets/terms.pdf");
    final buffer = data.buffer;
    return new File(path).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms of Use ',
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: PdfView(
          path: path,
        ),
      ),
    );
  }
}
