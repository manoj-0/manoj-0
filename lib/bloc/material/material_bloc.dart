import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'material_event.dart';
part 'material_state.dart';

class MaterialBloc extends Bloc<MaterialEvent, MaterialState> {
  //UserRepository userRepository = new UserRepositoryImpl();

  MaterialBloc() : super(MaterialInitializing());
  @override
  Stream<MaterialState> mapEventToState(
    MaterialEvent event,
  ) async* {
    if (event is LoadMaterialListEvent) {
      yield* _mapUserLoginToState(event);
    }
  }

  Stream<MaterialState> _mapUserLoginToState(
      LoadMaterialListEvent event) async* {
    BaseModel<SyllabusMaster> user;
    yield MaterialLoading();
    try {
      //user = await userRepository.userLogin(event.userMaster);

      if (user.getException != null) {
        ServerError _error = user.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield MaterialError(message: _error.getErrorMessage());
      } else {
        yield MaterialListLoaded(materialList: null);
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
      yield MaterialError(message: _error.getErrorMessage());
    }
  }

  @override
  // TODO: implement initialState
  MaterialState get initialState => MaterialLoading();
}
