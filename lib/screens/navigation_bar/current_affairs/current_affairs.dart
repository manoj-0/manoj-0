import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:tda_academy/bloc/caffair/caffairbloc.dart';
import 'package:tda_academy/models/caffair/CaffairModel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';

import '../../../models/caffair/CaffairModel.dart';
import '../../../models/caffair/CaffairModel.dart';
import '../../../rest_client/remote_api.dart';
import 'caffairs_card.dart';

class CurrentAffairs extends StatefulWidget {
  @override
  _CurrentAffairsState createState() => _CurrentAffairsState();
}

class _CurrentAffairsState extends State<CurrentAffairs> {
  CaffairBloc _caffairBloc;
  String accessToken;

  int userId;

  static const _pageSize = 10;

  final PagingController<int, CaffairModel> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    //_caffairBloc = CaffairBloc()..add(LoadCaffairListEvent(pageNumber: "1"));

    //infinite scroll
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });

    _pagingController.addStatusListener((status) {
      if (status == PagingStatus.subsequentPageError) {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: const Text(
              'Something went wrong while fetching a new page.',
            ),
            action: SnackBarAction(
              label: 'Retry',
              onPressed: () => _pagingController.retryLastFailedRequest(),
            ),
          ),
        );
      }
    });
    //end of infinite scroll
  }

  Future<void> _fetchPage(pageKey) async {
    try {
      final newItems = await RemoteApi.getCaffairList(pageKey);
      final isLastPage = newItems.data.data.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems.data.data);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(newItems.data.data, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  void _updateSearchTerm(String searchTerm) {
    _pagingController.refresh();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  final _scrollController = ScrollController();

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
              icon:
                  Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: CustomScrollView(
            slivers: [
              PagedSliverList<int, CaffairModel>(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<CaffairModel>(
                  itemBuilder: (context, item, index) => CaffairCard(
                    caffairModel: item,
                  ),
                ),
              ),
            ],
          )),
    );
  }

  //render popular course list
  Widget renderCAffairList(List<CaffairModel> caffairModel) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: caffairModel.length,
      itemBuilder: (BuildContext context, int index) {
        return CaffairCard(
          caffairModel: caffairModel[index],
        );
      },
    );
  }
}
