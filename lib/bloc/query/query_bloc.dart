import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/resources/query/query_repository.dart';
import 'package:tda_academy/resources/query/query_repositoryImpl.dart';
part 'query_event.dart';
part 'query_state.dart';

class QueryBloc extends Bloc<QueryEvent, QueryState> {
  QueryRepository queryRepository = new QueryRepositoryImpl();

  QueryBloc() : super(QueryInitializing());
  @override
  Stream<QueryState> mapEventToState(
    QueryEvent event,
  ) async* {
    if (event is LoadQueryByUserIdEvent) {
      yield* _mapLoadQueryListToState(event);
    }
  }

/**
   * save user query
   * 
   */
  Stream<QueryState> _mapLoadQueryListToState(
      LoadQueryByUserIdEvent event) async* {
    BaseModel<List<QueryMaster>> queryMaster;
    yield QueryLoading();
    try {
      queryMaster = await queryRepository.getQueryListByUserId(
          event.accessToken, event.userId);

      if (queryMaster.getException != null) {
        ServerError _error = queryMaster.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield QueryError(message: _error.getErrorMessage());
      } else {
        yield UserQueryLoaded(queryMaster: queryMaster.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      print(" data not found" + e.toString());
      ServerError _error = queryMaster.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield QueryError(message: _error.getErrorMessage());
    }
  }
}
