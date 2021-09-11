part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable {
  const UserState();
}

class UserInitializing extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {
  @override
  List<Object> get props => [];
}

class UserLogin extends UserState {
  @override
  // TODO: implement props
  UserMaster userMaster;

  UserLogin({@required this.userMaster});

  @override
  // TODO: implement props
  List<Object> get props => [userMaster];
}

class UserRegistered extends UserState {
  @override
  // TODO: implement props
  UserMaster userMaster;

  UserRegistered({@required this.userMaster});

  @override
  // TODO: implement props
  List<Object> get props => [userMaster];
}

class UserError extends UserState {
  String message;
  UserError({@required this.message});
  @override
  // TODO: implement props
  List<Object> get props => [message];
}

//user profile loaded state
class UserProfileLoaded extends UserState {
  @override
  // TODO: implement props
  UserMaster userMaster;

  UserProfileLoaded({@required this.userMaster});

  @override
  // TODO: implement props
  List<Object> get props => [userMaster];
}

//user profile updated state
class UserProfileUpdated extends UserState {
  @override
  // TODO: implement props
  UserMaster userMaster;

  UserProfileUpdated({@required this.userMaster});

  @override
  // TODO: implement props
  List<Object> get props => [userMaster];
}

//forgot otp sent
class ForgotOtpSent extends UserState {
  @override
  // TODO: implement props
  UserMaster userMaster;

  ForgotOtpSent({@required this.userMaster});

  @override
  // TODO: implement props
  List<Object> get props => [userMaster];
}

//forgot otp sent
class OtpVerified extends UserState {
  @override
  // TODO: implement props
  UserMaster userMaster;

  OtpVerified({@required this.userMaster});

  @override
  // TODO: implement props
  List<Object> get props => [userMaster];
}

//image uploaded
class ImageUploaded extends UserState {
  @override
  // TODO: implement props
  ImageMaster imageMaster;

  ImageUploaded({@required this.imageMaster});

  @override
  // TODO: implement props
  List<Object> get props => [imageMaster];
}
