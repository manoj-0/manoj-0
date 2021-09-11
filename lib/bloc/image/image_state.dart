part of 'image_bloc.dart';

@immutable
abstract class ImageState extends Equatable {
  const ImageState();
}

class ImageInitializing extends ImageState {
  @override
  List<Object> get props => [];
}

class ImageLoading extends ImageState {
  @override
  List<Object> get props => [];
}

class ImageLoaded extends ImageState {
  @override
  // TODO: implement props
  ImageMaster imageMaster;

  ImageLoaded({@required this.imageMaster});

  @override
  // TODO: implement props
  List<Object> get props => [imageMaster];
}

class ImageError extends ImageState {
  String message;
  ImageError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}

//image uploaded
class UserImageUploaded extends ImageState {
  @override
  // TODO: implement props
  ImageMaster imageMaster;

  UserImageUploaded({@required this.imageMaster});

  @override
  // TODO: implement props
  List<Object> get props => [imageMaster];
}
