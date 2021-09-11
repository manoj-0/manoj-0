import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:share/share.dart';
import 'package:tda_academy/bloc/image/imagebloc.dart';
import 'package:tda_academy/bloc/user/user_bloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/error_ui.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/user/profile_card.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/_ModalBottomSheetLayout.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/widget/custom_input_field.dart';

import 'package:http/http.dart' as http;
import 'package:tda_academy/widget/loading_dialog.dart';

import 'about_Us.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  UserMaster userMaster;
  String accessToken;
  int userId;
  UserBloc _userBloc;
  ImageBloc _imageBloc;
  final _descController = TextEditingController();
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  File _image;
  bool imageLoad = false;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  _imgFromCamera() async {
    final pickedFile =
        await picker.getImage(source: ImageSource.camera, imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        imageLoad = true;
        _imageBloc.add(UserImageUpload(
            accessToken: accessToken,
            userId: userId,
            userImage: _image,
            ownerType: "1"));
        print('image selected.$_image');
      } else {
        print('No image selected.');
      }
    });
  }

  _imgFromGallery() async {
    final pickedFile =
        await picker.getImage(source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        imageLoad = true;
        //uploadmultipleimage(_image.path);
        //_upload(_image);
        _imageBloc.add(UserImageUpload(
            accessToken: accessToken,
            userId: userId,
            userImage: _image,
            ownerType: "1"));
        print('image selected.$_image');
      } else {
        print('No image selected.');
      }
    });
  }

  Future<dynamic> _upload(File file) async {
    String url = "http://192.168.43.170:8888/tda_app/api/image/test";

    try {
      String fileName = file.path.split('/').last;
      Dio dio = new Dio();
      dio.options.headers["Authorization"] = "Bearer " + accessToken;
      Map<String, String> headers = {"Authorization": "Bearer " + accessToken};
      FormData formData = FormData.fromMap({
        "owner_id": 2,
        "owner_type": "2",
        "image_url": await MultipartFile.fromFile(file.path, filename: fileName)
      });
      var res = await dio.post(
        url,
        data: formData,
      );
      print(res.toString());
    } on DioError catch (e) {
      if (e.response != null) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else {
        print(e.request.headers);
        print(e.message);
      }
    }
  }

  Future uploadmultipleimage(String filename) async {
    String severUrl = "http://192.168.43.170:8888/tda_app/api/image/test";
    var request = http.MultipartRequest('POST', Uri.parse(severUrl));
    request.files.add(await http.MultipartFile.fromPath('image_url', filename));
    var res = await request.send();
    final respStr = await res.stream.bytesToString();
    print(respStr);
  }

  @override
  void initState() {
    // TODO: implement initState

    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    print("user_id ${userId} access_token ${accessToken}");

    super.initState();
    _userBloc = UserBloc();
    _imageBloc = ImageBloc();
    _userBloc.add(LoadUserProfile(accessToken: accessToken, userId: userId));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _userBloc,
        ),
        BlocProvider(
          create: (_) => _imageBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            '   Profile',
            style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
                color: kWhite,
                padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 10.0),
                child: Column(
                  children: <Widget>[
                    BlocBuilder<UserBloc, UserState>(
                      cubit: _userBloc,
                      builder: (context, state) {
                        if (state is UserLoading) {
                          print("rendering body");
                          return LoadingUi();
                        } else if (state is UserProfileLoaded) {
                          print(state.userMaster.phoneNumber);
                          userMaster = state.userMaster;

                          return ProfileCard(
                            imageMaster: _image,
                            userMaster: state.userMaster,
                            img: (state.userMaster.imageMaster != null)
                                ? true
                                : false,
                            onMetaTap: () {
                              print("Hello avinash");
                              _showSelectionDialog(context);
                            },
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                    BlocListener<UserBloc, UserState>(
                      listener: (context, state) {
                        if (state is UserProfileUpdated) {
                          //Navigator.pop(context);
                          Navigator.of(_keyLoader.currentContext,
                                  rootNavigator: true)
                              .pop();
                        }
                      },
                      child: BlocBuilder<UserBloc, UserState>(
                          cubit: _userBloc,
                          builder: (context, state) {
                            if (state is UserProfileUpdated) {
                              //show a toast of query submitted
                              Fluttertoast.showToast(
                                  msg: "SUCCESS: updated successfully!",
                                  toastLength: Toast.LENGTH_SHORT);

                              return ProfileCard(
                                imageMaster: _image,
                                userMaster: userMaster,
                                img: (state.userMaster.imageMaster != null)
                                    ? true
                                    : false,
                                onMetaTap: () {
                                  print("Hello avinash");
                                  _showSelectionDialog(context);
                                },
                              );
                            } else if (state is UserError) {
                              return ErrorUi(
                                message: state.message,
                              );
                            } else {
                              return Container();
                            }
                          }),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white10, width: 1.0),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
                // boxShadow: <BoxShadow>[
                //   new BoxShadow(
                //     color: Color(0xFFCFDCE7),
                //     blurRadius: 4.0,
                //     offset: new Offset(0.1, 0.1),
                //   ),
                // ],
              ),
              child: Column(
                children: <Widget>[
                  new ListTile(
                      leading: Icon(
                        Icons.edit,
                        color: grey,
                      ),
                      title: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'mvr',
                            fontSize: 17.0,
                            height: 1.5),
                      ),
                      onTap: () {
                        _modalBottomSheetMenu();
                        // Navigator.of(context)
                        //     .pushNamed(editProfile, arguments: userMaster);
                      }),
                  // new Divider(),
                  // new ListTile(
                  //     leading: Icon(
                  //       Icons.lock_open,
                  //       color: grey,
                  //     ),
                  //     title: new Text(
                  //       "Purchased Courses",
                  //       style: TextStyle(
                  //           color: black,
                  //           fontFamily: 'mvr',
                  //           fontSize: 17.0,
                  //           height: 1.5),
                  //     ),
                  //     onTap: () {
                  //       // Navigator.push(context, MaterialPageRoute(builder: (context)=> Help_Screen(toolbarname: 'Help',)));
                  //     }),
                  // new Divider(),
                  // new ListTile(
                  //     leading: Icon(
                  //       Icons.history,
                  //       color: grey,
                  //     ),
                  //     title: new Text(
                  //       "Payment history",
                  //       style: TextStyle(
                  //           color: black,
                  //           fontFamily: 'mvr',
                  //           fontSize: 17.0,
                  //           height: 1.5),
                  //     ),
                  //     onTap: () async {}),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white10, width: 1.0),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
                // boxShadow: <BoxShadow>[
                //   new BoxShadow(
                //     color: Color(0xFFCFDCE7),
                //     blurRadius: 4.0,
                //     offset: new Offset(0.1, 0.1),
                //   ),
                // ],
              ),
              child: Column(
                children: <Widget>[
                  new ListTile(
                      leading: Icon(
                        Icons.details,
                        color: grey,
                      ),
                      title: Text(
                        "About Us",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'mvr',
                            fontSize: 17.0,
                            height: 1.5),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AboutUs()));
                        // Navigator.of(context)
                        //     .pushNamed(editProfile, arguments: userMaster);
                      }),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white10, width: 1.0),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
                // boxShadow: <BoxShadow>[
                //   new BoxShadow(
                //     color: Color(0xFFCFDCE7),
                //     blurRadius: 4.0,
                //     offset: new Offset(0.1, 0.1),
                //   ),
                // ],
              ),
              child: Column(
                children: <Widget>[
                  // new ListTile(
                  //     leading: Icon(
                  //       Icons.info,
                  //       color: grey,
                  //     ),
                  //     title: new Text(
                  //       "FAQ",
                  //       style: TextStyle(
                  //           color: black,
                  //           fontFamily: 'mvr',
                  //           fontSize: 17.0,
                  //           height: 1.5),
                  //     ),
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed(faq);
                  //     }),
                  // new Divider(),
                  new ListTile(
                      leading: Icon(
                        Icons.share,
                        color: grey,
                      ),
                      title: new Text(
                        "Share App",
                        style: TextStyle(
                            color: black,
                            fontFamily: 'mvr',
                            fontSize: 17.0,
                            height: 1.5),
                      ),
                      onTap: () async {
                        if (Platform.isAndroid) {
                          print('Android');
                          _onShareWithEmptyOrigin(context, play_store_url);
                          // Android 9 (SDK 28), Xiaomi Redmi Note 7
                        }

                        if (Platform.isIOS) {
                          _onShareWithEmptyOrigin(context, app_store_url);
                          print('ios');
                          // iOS 13.1, iPhone 11 Pro Max iPhone
                        }
                      }),
                  // new Divider(),
                  // new ListTile(
                  //     leading: Icon(
                  //       Icons.search,
                  //       color: grey,
                  //     ),
                  //     title: new Text(
                  //       "About Us",
                  //       style: TextStyle(
                  //           color: black,
                  //           fontFamily: 'mvr',
                  //           fontSize: 17.0,
                  //           height: 1.5),
                  //     ),
                  //     onTap: () async {}),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white10, width: 1.0),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(7.0),
                ),
                // boxShadow: <BoxShadow>[
                //   new BoxShadow(
                //     color: Color(0xFFCFDCE7),
                //     blurRadius: 5.0,
                //     offset: new Offset(0.2, 0.2),
                //   ),
                // ],
              ),
              child: ListTile(
                  leading: Icon(
                    Icons.power_settings_new,
                    color: Colors.red,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.redAccent, fontSize: 17.0),
                  ),
                  onTap: () {
                    PreferenceUtils.clear();
                    //  MaterialPageRoute(builder: (context) =>LoginScreen());
                    Navigator.of(context).popAndPushNamed(loginRoute);
                  }),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "App version 1.0.0",
                style: TextStyle(
                    color: maincolor,
                    fontFamily: 'mvr',
                    fontSize: 15.0,
                    height: 1.5),
              ),
            ),
            SizedBox(
              height: 26.0,
            )
          ],
        ),
      ),
    );
  }

  _onShareWithEmptyOrigin(BuildContext context, String url) async {
    await Share.share(url);
  }

/**
 * image picker dialog
 */
  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("From where do you want to take the photo?"),
              content: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      child: Column(
                        children: [
                          Icon(
                            Icons.photo,
                            color: Colors.blue,
                            size: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Gallery"),
                        ],
                      ),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera,
                            color: Colors.black,
                            size: 50,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Camera"),
                        ],
                      ),
                      onTap: () {
                        _imgFromCamera();
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
              ));
        });
  }

/*
 * end of image picker dialog
 */
  /*
   * show modal bottom sheet to enter the query
   */
  void _modalBottomSheetMenu() {
    showModalBottomSheetApp(
      dismissOnTap: true,
      context: context,
      builder: (builder) {
        return Container(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              FormBuilder(
                key: _fbKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Container(
                  padding: EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                  alignment: Alignment.topCenter,
                  child: CustomInputField(
                    maxline: 1,
                    label: full_name,
                    obscureText: false,
                    prefixedIcon: false,
                    controller: _descController,
                    validators: [
                      FormBuilderValidators.required(context,
                          errorText: "Please enter your name"),
                    ],
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.newline,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  if (_fbKey.currentState.saveAndValidate()) {
                    userMaster.name = _descController.text.trim().toString();
                    Navigator.of(context).pop();
                    LoadingDialog.showLoadingDialog(context, _keyLoader);
                    _userBloc.add(UpdateUserEvent(
                        accessToken: accessToken,
                        userMaster: userMaster,
                        userId: userId));
                  }
                  print(_descController.text.toString());
                  // QueryMaster query = QueryMaster();
                  // query.courseId = widget.courseMaster.id.toString();
                  // query.askedBy = 2.toString();
                  // query.materialId = widget.materialMaster.id.toString();
                  // query.syllabusId = 36.toString();
                  // query.name = _descController.text.toString();
                },
                color: kBlack,
                textColor: Colors.white,
                child: Text("Update".toUpperCase(),
                    style:
                        kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 4)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: BorderSide(color: kBlack)),
              )
            ],
          ),
        ));
      },
      statusBarHeight: 250,
    );
  }

  Future<void> retrieveLostData() async {
    final LostData response = await picker.getLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      if (response.type == RetrieveType.image) {
        setState(() {
          _image = File(response.file.path);
        });
      } else {
        print("${response.exception.code} exception occured");
      }
    }
  }
}
