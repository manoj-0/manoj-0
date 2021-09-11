import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/utility/UtilityMaster.dart';
import 'package:tda_academy/resources/user/user_repository.dart';
import 'package:tda_academy/resources/user/user_repositoryimpl.dart';
part 'utility_event.dart';
part 'utility_state.dart';

class UtilityBloc extends Bloc<UtilityEvent, UtilityState> {
  UserRepository userRepository = new UserRepositoryImpl();

  UtilityBloc() : super(UtilityInitializing());
  @override
  Stream<UtilityState> mapEventToState(
    UtilityEvent event,
  ) async* {
    if (event is UtilityLoadingEvent) {
      yield* _mapUserLoginToState(event);
    }
  }

  Stream<UtilityState> _mapUserLoginToState(UtilityLoadingEvent event) async* {
    BaseModel<UtilityMaster> utilityMaster;
    yield UtilityLoading();
    try {
      utilityMaster = await userRepository.getBanners();
      //print(user);

      if (utilityMaster.getException != null) {
        ServerError _error = utilityMaster.getException;
        print("${_error.getErrorMessage()}  avinash data not found");
        yield UtilityError(message: _error.getErrorMessage());
      } else {
        yield UtilityLoaded(utilityMaster: utilityMaster.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = utilityMaster.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield UtilityError(message: _error.getErrorMessage());
    }
  }

  @override
  // TODO: implement initialState
  UtilityState get initialState => UtilityLoading();
}
