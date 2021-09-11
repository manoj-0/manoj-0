import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:tda_academy/bloc/caffair/caffairbloc.dart';
import 'package:tda_academy/models/caffair/CaffairModel.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class CaffairDetail extends StatefulWidget {
  final CaffairModel caffairModel;

  const CaffairDetail({Key key, this.caffairModel}) : super(key: key);
  @override
  _CaffairDetailState createState() => _CaffairDetailState();
}

class _CaffairDetailState extends State<CaffairDetail> {
  CaffairBloc _caffairBloc;
  var unescape = HtmlUnescape();
  String accessToken;
  int userId;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    //_caffairBloc = CaffairBloc()..add(LoadCaffairListEvent(pageNumber: "1"));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _caffairBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            '   Current affairs',
            style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text(widget.caffairModel.title)),
                  Html(
                    data: unescape.convert(widget.caffairModel.description),
                    style: {
                      "body": Style(
                        fontSize: FontSize(18.0),
                      ),
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
