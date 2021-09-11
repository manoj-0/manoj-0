part of 'syllabus_bloc.dart';

@immutable
abstract class SyllabusState extends Equatable {
  const SyllabusState();
}

class SyllabusInitializing extends SyllabusState {
  @override
  List<Object> get props => [];
}

class SyllabusLoading extends SyllabusState {
  @override
  List<Object> get props => [];
}

class SyllabusListLoaded extends SyllabusState {
  @override
  // TODO: implement props
  List<SyllabusMaster> syllabusMasterList;

  SyllabusListLoaded({@required this.syllabusMasterList});

  @override
  // TODO: implement props
  List<Object> get props => [syllabusMasterList];
}

class SyllabusError extends SyllabusState {
  String message;
  SyllabusError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
