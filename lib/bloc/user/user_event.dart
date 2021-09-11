part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {
  const UserEvent();
}

class UserLoginEvent extends UserEvent {
  final UserMaster userMaster;
  const UserLoginEvent({
    @required this.userMaster,
  });
  @override
  List<Object> get props => [];
}

class UserRegistrationEvent extends UserEvent {
  final UserMaster userMaster;
  const UserRegistrationEvent({
    @required this.userMaster,
  });
  @override
  List<Object> get props => [];
}

class LoadUserProfile extends UserEvent {
  final String accessToken;
  final int userId;
  const LoadUserProfile({@required this.accessToken, @required this.userId});
  @override
  List<Object> get props => [];
}

class UpdateUserEvent extends UserEvent {
  final String accessToken;
  final UserMaster userMaster;
  final int userId;
  const UpdateUserEvent({
    @required this.accessToken,
    @required this.userMaster,
    @required this.userId,
  });
  @override
  List<Object> get props => [];
}

//forgot password
class ForgotPasswordEvent extends UserEvent {
  final UserMaster userMaster;
  const ForgotPasswordEvent({@required this.userMaster});
  @override
  List<Object> get props => [];
}

//forgot password
class VerifyOtpEvent extends UserEvent {
  final UserMaster userMaster;
  const VerifyOtpEvent({@required this.userMaster});
  @override
  List<Object> get props => [];
}

//upload user image
class UploadUserImage extends UserEvent {
  final String accessToken;
  final File userImage;
  final int userId;
  final String ownerType;
  const UploadUserImage({
    @required this.accessToken,
    @required this.userImage,
    @required this.userId,
    @required this.ownerType,
  });
  @override
  // TODO: implement props
  List<Object> get props => null;
}
