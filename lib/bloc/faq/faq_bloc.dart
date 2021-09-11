import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'faq_event.dart';
part 'faq_state.dart';

class FaqBloc extends Bloc<FaqEvent, FaqState> {
  //UserRepository userRepository = new UserRepositoryImpl();

  FaqBloc() : super(FaqInitializing());
  @override
  Stream<FaqState> mapEventToState(
    FaqEvent event,
  ) async* {
    if (event is LoadFaqListEvent) {
      yield* _mapUserLoginToState(event);
    }
  }

  Stream<FaqState> _mapUserLoginToState(LoadFaqListEvent event) async* {
    BaseModel<SyllabusMaster> user;
    yield FaqLoading();
    try {
      //user = await userRepository.userLogin(event.userMaster);

      if (user.getException != null) {
        ServerError _error = user.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield FaqError(message: _error.getErrorMessage());
      } else {
        yield FaqListLoaded(faqMasterList: null);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = user.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield FaqError(message: _error.getErrorMessage());
    }
  }

  @override
  // TODO: implement initialState
  FaqState get initialState => FaqLoading();
}
