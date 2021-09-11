part of 'image_bloc.dart';

@immutable
abstract class ImageEvent extends Equatable {
  const ImageEvent();
}

class LoadImageEvent extends ImageEvent {
  final ImageMaster imageMaster;
  const LoadImageEvent({
    @required this.imageMaster,
  });
  @override
  List<Object> get props => [];
}

class UserImageUpload extends ImageEvent {
  final String accessToken;
  final File userImage;
  final int userId;
  final String ownerType;
  const UserImageUpload({
    @required this.accessToken,
    @required this.userImage,
    @required this.userId,
    @required this.ownerType,
  });
  @override
  // TODO: implement props
  List<Object> get props => null;
}
