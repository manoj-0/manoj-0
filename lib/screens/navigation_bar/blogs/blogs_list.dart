import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/blog/blogbloc.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/screens/navigation_bar/blogs/blog_card.dart';
import 'package:tda_academy/screens/navigation_bar/course/my_course/my_course_card.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

class BlogsList extends StatefulWidget {
  @override
  _BlogsListState createState() => _BlogsListState();
}

class _BlogsListState extends State<BlogsList> {
  BlogBloc _blogBloc;
  String accessToken;
  int userId;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //navigate to the login screen if user is not logged in
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    _blogBloc = BlogBloc()..add(LoadBlogListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _blogBloc,
        ),
      ],
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: maincolor,
            titleSpacing: 0.0,
            title: Text(
              '   Articles',
              style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
            ),
          ),
          body: Container(
            child: BlocBuilder<BlogBloc, BlogState>(
              builder: (context, state) {
                if (state is BlogLoading) {
                  print("rendering body");
                  return LoadingUi();
                } else if (state is BlogListLoaded) {
                  print(state.blogMasterList.length);

                  return renderBlogList(state.blogMasterList);
                } else {
                  return Container();
                }
              },
            ),
          )),
    );
  }

  //render popular course list
  Widget renderBlogList(List<BlogMaster> blogList) {
    print("${blogList[0].title} testing my course tab ${blogList.length}");
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: blogList.length,
      itemBuilder: (BuildContext context, int index) {
        return BlogCard(
          blogMaster: blogList[index],
        );
      },
    );
  }
}
