import 'dart:collection';

import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class MaterialView extends StatefulWidget {
  final MaterialMaster materialMaster;
  final CourseMaster courseMaster;
  final SyllabusMaster syllabusMaster;

  const MaterialView(
      {Key key, this.materialMaster, this.courseMaster, this.syllabusMaster})
      : super(key: key);
  @override
  _MaterialViewState createState() => _MaterialViewState();
}

class _MaterialViewState extends State<MaterialView> {
  bool _isLoading = true;
  PDFDocument document;

  void requestPersmission() async {
    var status = await Permission.storage.status;
    if (status.isGranted) {
      // final pickedFile =
      //     await _picker.getImage(source: ImageSource.camera);
      // final File file = File(pickedFile.path);
      // imageSelected(file);
    } else if (status.isUndetermined) {
      // final pickedFile =
      //     await _picker.getImage(source: ImageSource.camera);
      // final File file = File(pickedFile.path);
      // imageSelected(file);
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
                title: Text('Camera Permission'),
                content: Text(
                    'This app needs camera access to take pictures for upload user profile photo'),
                actions: <Widget>[
                  CupertinoDialogAction(
                    child: Text('Deny'),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  CupertinoDialogAction(
                    child: Text('Settings'),
                    onPressed: () => openAppSettings(),
                  ),
                ],
              ));
    }
  }

  @override
  void initState() {
    changePDF(2);
    super.initState();
  }

  changePDF(value) async {
    setState(() => _isLoading = true);
    if (value == 2) {
      document = await PDFDocument.fromURL(
          //"http://conorlastowka.com/book/CitationNeededBook-Sample.pdf",
          material_url + widget.materialMaster.fileLocation
          /* cacheManager: CacheManager(
          Config(
            "customCacheKey",
            stalePeriod: const Duration(days: 2),
            maxNrOfCacheObjects: 10,
          ),
        ), */
          );
    }
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Icon(
                //   Icons.details,
                //   color: Colors.black,
                // ),
                // SizedBox(
                //   width: 15,
                // ),
                // Icon(
                //   Icons.message,
                //   color: Colors.black,
                // ),
                // SizedBox(
                //   width: 15,
                // ),
                IconButton(
                  icon: Icon(
                    Icons.question_answer,
                    color: kWhite,
                  ),
                  onPressed: () {
                    Map<String, Object> parameters = new HashMap();
                    parameters['courseMaster'] = widget.courseMaster;
                    parameters['materialMaster'] = widget.materialMaster;
                    parameters['syllabusMaster'] = widget.syllabusMaster;

                    Navigator.of(context)
                        .pushNamed(viewMaterialQueries, arguments: parameters);
                  },
                )
              ],
            ),
          ),
        ],
        backgroundColor: maincolor,
        titleSpacing: 0.0,
        title: Text(
          widget.materialMaster.title,
          style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
                //uncomment below line to preload all pages
                // lazyLoad: false,
                // uncomment below line to scroll vertically
                // scrollDirection: Axis.vertical,

                //uncomment below code to replace bottom navigation with your own
                /* navigationBuilder:
                      (context, page, totalPages, jumpToPage, animateToPage) {
                    return ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.first_page),
                          onPressed: () {
                            jumpToPage()(page: 0);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            animateToPage(page: page - 2);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {
                            animateToPage(page: page);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.last_page),
                          onPressed: () {
                            jumpToPage(page: totalPages - 1);
                          },
                        ),
                      ],
                    );
                  }, */
              ),
      ),
    );
  }
}
