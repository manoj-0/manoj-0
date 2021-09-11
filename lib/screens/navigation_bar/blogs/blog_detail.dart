import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:tda_academy/bloc/blog/blog_bloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class BlogDetail extends StatefulWidget {
  final BlogMaster blogMaster;

  const BlogDetail({Key key, this.blogMaster}) : super(key: key);
  @override
  _BlogDetailState createState() => _BlogDetailState();
}

class _BlogDetailState extends State<BlogDetail> {
  BlogBloc _blogBloc;
  var unescape = HtmlUnescape();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("${widget.blogMaster.id} blog id in detail page");
    _blogBloc = BlogBloc()
      ..add(LoadBlogPostEvent(blogId: widget.blogMaster.id));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => _blogBloc,
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: maincolor,
            titleSpacing: 0.0,
            title: Text(
              "Blog",
              style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
            ),
            leading: IconButton(
              icon:
                  Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                BlocBuilder<BlogBloc, BlogState>(
                  cubit: _blogBloc,
                  builder: (context, state) {
                    if (state is BlogPostLoaded) {
                      //Navigator.pop(context);
                      print(state.postMaster.content);

                      return renderBlogContent(state.postMaster);
                    } else if (state is BlogError) {
                      return Container(
                        alignment: Alignment.center,
                        child: Text(state.message,
                            style: kLabelStyleBold.apply(
                              color: kred,
                            )),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }

  Widget renderBlogContent(PostMaster post) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(3),
          child: Container(
            height: MediaQuery.of(context).size.height * .23,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                color: kWhite,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "${course_image_url}blog/"
                    "${(widget.blogMaster.thumbnailImage != null) ? widget.blogMaster.thumbnailImage : 'logo.jpeg'}",
                  ),
                )),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Html(
            data: unescape.convert(post.content),
            style: {
              "body": Style(
                fontSize: FontSize(18.0),
              ),
            },
          ),
        ),
      ],
    );
  }
}
