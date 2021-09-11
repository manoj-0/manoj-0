part of 'material_bloc.dart';

@immutable
abstract class MaterialState extends Equatable {
  const MaterialState();
}

class MaterialInitializing extends MaterialState {
  @override
  List<Object> get props => [];
}

class MaterialLoading extends MaterialState {
  @override
  List<Object> get props => [];
}

class MaterialListLoaded extends MaterialState {
  @override
  // TODO: implement props
  List<MaterialMaster> materialList;

  MaterialListLoaded({@required this.materialList});

  @override
  // TODO: implement props
  List<Object> get props => [materialList];
}

class MaterialError extends MaterialState {
  String message;
  MaterialError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}
