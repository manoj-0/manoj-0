import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class BlogCard extends StatefulWidget {
  final BlogMaster blogMaster;

  const BlogCard({Key key, this.blogMaster}) : super(key: key);
  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(blogPost, arguments: widget.blogMaster);
              // final snackbar = SnackBar(
              //   content: Text("Category name is - "),
              //   action: SnackBarAction(
              //     label: "OK",
              //     onPressed: () {
              //       Scaffold.of(context).hideCurrentSnackBar();
              //     },
              //   ),
              // );
              // Scaffold.of(context).showSnackBar(snackbar);
            },
            child: Container(
              height: MediaQuery.of(context).size.height * .23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                border: Border.all(color: Color(0xFFeff0f3), width: 1),
                color: Color(0xFFffffff),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "${course_image_url}"
                    "${(widget.blogMaster.thumbnailImage != null) ? "blog/${widget.blogMaster.thumbnailImage}" : 'logo.jpeg'}",
                  ),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xffe7edfb),
                    blurRadius: 1.0,
                    offset: Offset(0.1, 0.1),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                child: Text(
                  widget.blogMaster.title,
                  style: kLabelStyle.apply(color: maincolor, fontSizeDelta: 2),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                child: Text(
                  widget.blogMaster.description,
                  style: Theme.of(context).textTheme.button,
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        _onShareWithEmptyOrigin(context, base_url + "blog");
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.shareOutline,
                              size: 15, color: maincolor),
                          Text(
                            '   Share',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(blogPost, arguments: widget.blogMaster);
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(EvaIcons.eyeOutline, size: 15, color: maincolor),
                          Text(
                            '   Read',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: 'mvb',
                                color: maincolor,
                                fontSize: 14.0,
                                height: 1.4),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _onShareWithEmptyOrigin(BuildContext context, String url) async {
    await Share.share(url);
  }
}
