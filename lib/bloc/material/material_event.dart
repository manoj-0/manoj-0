part of 'material_bloc.dart';

@immutable
abstract class MaterialEvent extends Equatable {
  const MaterialEvent();
}

class LoadMaterialListEvent extends MaterialEvent {
  final List<MaterialMaster> syllabusMasterList;
  const LoadMaterialListEvent({
    @required this.syllabusMasterList,
  });
  @override
  List<Object> get props => [];
}
