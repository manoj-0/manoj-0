import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  //UserRepository userRepository = new UserRepositoryImpl();

  DashboardBloc() : super(DashboardInitializing());
  @override
  Stream<DashboardState> mapEventToState(
    DashboardEvent event,
  ) async* {
    if (event is LoadDashboardEvent) {
      yield* _mapUserLoginToState(event);
    }
  }

  Stream<DashboardState> _mapUserLoginToState(LoadDashboardEvent event) async* {
    BaseModel<SyllabusMaster> user;
    yield DashboardLoading();
    try {
      //user = await userRepository.userLogin(event.userMaster);

      if (user.getException != null) {
        ServerError _error = user.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield DashboardError(message: _error.getErrorMessage());
      } else {
        yield DashboardLoaded(courseMasterList: null);
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
      yield DashboardError(message: _error.getErrorMessage());
    }
  }

  @override
  // TODO: implement initialState
  DashboardState get initialState => DashboardLoading();
}
