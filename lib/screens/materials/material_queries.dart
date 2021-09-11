import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/bloc/query/query_bloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/error_ui.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/materials/material_question.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/_ModalBottomSheetLayout.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/widget/custom_input_field.dart';

class MaterialQuery extends StatefulWidget {
  final MaterialMaster materialMaster;
  final CourseMaster courseMaster;
  final SyllabusMaster syllabusMaster;

  const MaterialQuery(
      {Key key, this.materialMaster, this.courseMaster, this.syllabusMaster})
      : super(key: key);

  @override
  _MaterialQueryState createState() => _MaterialQueryState();
}

class _MaterialQueryState extends State<MaterialQuery> {
  CourseBloc _courseBloc;
  QueryBloc _queryBloc;
  String accessToken;
  int userId;
  final _descController = TextEditingController();
  TextEditingController _text = new TextEditingController();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    print(widget.syllabusMaster.id.toString());
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    _courseBloc = CourseBloc();
    _queryBloc = QueryBloc()
      ..add(LoadQueryByUserIdEvent(accessToken: accessToken, userId: userId));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _courseBloc,
        ),
        BlocProvider(
          create: (_) => _queryBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.courseMaster.mentorName,
                style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
              ),
              Text(
                "mentor",
                style: kLabelStyle.apply(color: kWhite, fontSizeDelta: 2),
              ),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: widget.courseMaster.user.imageMaster != null
                    ? NetworkImage("${course_image_url}"
                        "${widget.courseMaster.user.imageMaster.imageUrl}")
                    : NetworkImage("${course_image_url}"
                        "logo.jpeg"),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/chat-background-1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SingleChildScrollView(
                            controller: _scrollController,
                            // reverse: true,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 15, right: 15, top: 0),
                                  child: BlocBuilder<QueryBloc, QueryState>(
                                      cubit: _queryBloc,
                                      builder: (context, state) {
                                        if (state is UserQueryLoaded) {
                                          //Navigator.pop(context);
                                          //show a toast of query submitted
                                          return renderQueriesList(
                                              state.queryMaster);
                                        } else if (state is QueryLoading) {
                                          return LoadingUi();
                                        } else if (state is QueryError) {
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
                      ),
                    ),
                    Divider(height: 0, color: Colors.black26),
                    BlocBuilder<CourseBloc, CourseState>(
                        cubit: _courseBloc,
                        builder: (context, state) {
                          if (state is QuerySaved) {
                            BlocProvider.of<QueryBloc>(context).add(
                                LoadQueryByUserIdEvent(
                                    accessToken: accessToken, userId: userId));

                            Navigator.pop(context);
                            //show a toast of query submitted
                            Fluttertoast.showToast(
                                msg: "SUCCESS: Query submitted successfully!",
                                toastLength: Toast.LENGTH_SHORT);

                            return Container();
                          } else if (state is CourseError) {
                            return ErrorUi(
                              message: state.message,
                            );
                          } else {
                            return Container();
                          }
                        }),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: RaisedButton(
                            onPressed: () {
                              _modalBottomSheetMenu();
                            },
                            color: kBlack,
                            textColor: Colors.white,
                            child: Text("Ask question".toUpperCase(),
                                style: kLabelStyleBold.apply(
                                    color: kWhite, fontSizeDelta: 4)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                side: BorderSide(color: kBlack)),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//render popular course list
  Widget renderQueriesList(List<QueryMaster> queryList) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return MaterialQuestion(
          queryMaster: queryList[index],
        );
      },
      itemCount: queryList.length,
    );
  }

  /**
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
              Container(
                padding: EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                alignment: Alignment.topCenter,
                child: CustomInputField(
                  maxline: 5,
                  label: query_desc,
                  obscureText: false,
                  prefixedIcon: false,
                  controller: _descController,
                  validators: [
                    FormBuilderValidators.required(context,
                        errorText: "Please enter yout query"),
                  ],
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.newline,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  print(_descController.text.toString());
                  QueryMaster query = QueryMaster();
                  query.courseId = widget.courseMaster.id.toString();
                  query.askedBy = userId.toString();
                  query.materialId = widget.materialMaster.id.toString();
                  query.syllabusId = widget.syllabusMaster.id.toString();
                  query.name = _descController.text.toString();
                  Navigator.of(context).pop();
                  showLoaderDialog(context);
                  _courseBloc.add(
                      SaveQuery(accessToken: accessToken, queryMaster: query));
                },
                color: kBlack,
                textColor: Colors.white,
                child: Text("Submit question".toUpperCase(),
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

  //show progrerss dialog
  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Please wait...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
