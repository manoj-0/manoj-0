import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/caffair/CaffairModel.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/resources/caffair/caffair_repository.dart';
import 'package:tda_academy/resources/caffair/caffair_repositoryimpl.dart';
part 'caffair_event.dart';
part 'caffair_state.dart';

class CaffairBloc extends Bloc<CaffairEvent, CaffairState> {
  CaffairRepository blogRepository = new CaffairRepositoryImpl();

  CaffairBloc() : super(CaffairInitializing());
  @override
  Stream<CaffairState> mapEventToState(
    CaffairEvent event,
  ) async* {
    if (event is LoadCaffairListEvent) {
      yield* _mapBlogListToState(event);
    }
  }

  Stream<CaffairState> _mapBlogListToState(LoadCaffairListEvent event) async* {
    BaseModel<CaffairModel> caffairList;
    yield CaffairLoading();
    try {
      caffairList = await blogRepository.getCaffairList(event.pageNumber);

      if (caffairList.getException != null) {
        ServerError _error = caffairList.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield CaffairError(message: _error.getErrorMessage());
      } else {
        yield CaffairListLoaded(caffairList: caffairList.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = caffairList.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield CaffairError(message: _error.getErrorMessage());
    }
  }

  CaffairState get initialState => CaffairLoading();
}
