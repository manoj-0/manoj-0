part of 'syllabus_bloc.dart';

@immutable
abstract class SyllabusEvent extends Equatable {
  const SyllabusEvent();
}

class LoadSyllabusListEvent extends SyllabusEvent {
  final List<SyllabusMaster> syllabusMasterList;
  const LoadSyllabusListEvent({
    @required this.syllabusMasterList,
  });
  @override
  List<Object> get props => [];
}
