import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'syllabus_event.dart';
part 'syllabus_state.dart';

class SyllabusBloc extends Bloc<SyllabusEvent, SyllabusState> {
  //UserRepository userRepository = new UserRepositoryImpl();

  SyllabusBloc() : super(SyllabusInitializing());
  @override
  Stream<SyllabusState> mapEventToState(
    SyllabusEvent event,
  ) async* {
    if (event is LoadSyllabusListEvent) {
      yield* _mapUserLoginToState(event);
    }
  }

  Stream<SyllabusState> _mapUserLoginToState(
      LoadSyllabusListEvent event) async* {
    BaseModel<SyllabusMaster> user;
    yield SyllabusLoading();
    try {
      //user = await userRepository.userLogin(event.userMaster);

      if (user.getException != null) {
        ServerError _error = user.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield SyllabusError(message: _error.getErrorMessage());
      } else {
        yield SyllabusListLoaded(syllabusMasterList: null);
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
      yield SyllabusError(message: _error.getErrorMessage());
    }
  }

  @override
  // TODO: implement initialState
  SyllabusState get initialState => SyllabusLoading();
}
