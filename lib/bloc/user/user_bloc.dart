import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/models/user/OtpMaster.dart';
import 'package:tda_academy/resources/user/user_repository.dart';
import 'package:tda_academy/resources/user/user_repositoryimpl.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository userRepository = new UserRepositoryImpl();

  UserBloc() : super(UserInitializing());
  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is UserLoginEvent) {
      yield* _mapUserLoginToState(event);
    }

    if (event is LoadUserProfile) {
      yield* _mapUserProfileToState(event);
    }

    if (event is UpdateUserEvent) {
      yield* _mapUpdateUserToState(event);
    }

    if (event is UserRegistrationEvent) {
      yield* _mapUserRegistrationToState(event);
    }
    if (event is ForgotPasswordEvent) {
      yield* _mapForgotPasswordState(event);
    }

    if (event is VerifyOtpEvent) {
      yield* _mapVerifyOtpState(event);
    }
    if (event is UploadUserImage) {
      yield* _mapImageUploadState(event);
    }
  }

  /**
 * user image uploading
 */
  Stream<UserState> _mapImageUploadState(UploadUserImage event) async* {
    BaseModel<ImageMaster> image;
    yield UserLoading();
    try {
      image = await userRepository.uploadImage(
          event.accessToken, event.userImage, event.userId, event.ownerType);
      //print(user);

      if (image.getException != null) {
        ServerError _error = image.getException;
        print("${_error.getErrorMessage()}  avinash data not found");
        yield UserError(message: _error.getErrorMessage());
      } else {
        yield ImageUploaded(imageMaster: image.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = image.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield UserError(message: _error.getErrorMessage());
    }
  }

  /**
 * user verify otp
 */
  Stream<UserState> _mapVerifyOtpState(VerifyOtpEvent event) async* {
    BaseModel<UserMaster> user;
    yield UserLoading();
    try {
      user = await userRepository.verifyOtp(event.userMaster);
      //print(user);

      if (user.getException != null) {
        ServerError _error = user.getException;
        print("${_error.getErrorMessage()}  avinash data not found");
        yield UserError(message: _error.getErrorMessage());
      } else {
        yield OtpVerified(userMaster: user.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = user.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield UserError(message: _error.getErrorMessage());
    }
  }

/**
 * user forgot password event
 */
  Stream<UserState> _mapForgotPasswordState(ForgotPasswordEvent event) async* {
    BaseModel<UserMaster> user;
    yield UserLoading();
    try {
      user = await userRepository.forgotPassword(event.userMaster);
      //print(user);

      if (user.getException != null) {
        ServerError _error = user.getException;
        print("${_error.getErrorMessage()}  avinash data not found");
        yield UserError(message: _error.getErrorMessage());
      } else {
        yield ForgotOtpSent(userMaster: user.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = user.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield UserError(message: _error.getErrorMessage());
    }
  }

/**
 * user registration event 
 */

  Stream<UserState> _mapUserRegistrationToState(
      UserRegistrationEvent event) async* {
    BaseModel<UserMaster> user;
    yield UserLoading();
    try {
      user = await userRepository.userRegistration(event.userMaster);
      //print(user);

      if (user.getException != null) {
        ServerError _error = user.getException;
        print("${_error.getErrorMessage()}  avinash data not found");
        yield UserError(message: _error.getErrorMessage());
      } else {
        yield UserRegistered(userMaster: user.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = user.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield UserError(message: _error.getErrorMessage());
    }
  }

/**
   * load user profile
   */
  Stream<UserState> _mapUpdateUserToState(UpdateUserEvent event) async* {
    BaseModel<UserMaster> user;
    yield UserLoading();
    try {
      user = await userRepository.updateUser(
          event.accessToken, event.userMaster, event.userId);
      //print(user);

      if (user.getException != null) {
        ServerError _error = user.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield UserError(message: _error.getErrorMessage());
      } else {
        yield UserProfileUpdated(userMaster: user.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = user.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield UserError(message: _error.getErrorMessage());
    }
  }

  /**
   * load user profile
   */
  Stream<UserState> _mapUserProfileToState(LoadUserProfile event) async* {
    BaseModel<UserMaster> user;
    yield UserLoading();
    try {
      user = await userRepository.userprofile(event.accessToken, event.userId);
      //print(user);

      if (user.getException != null) {
        ServerError _error = user.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield UserError(message: _error.getErrorMessage());
      } else {
        yield UserProfileLoaded(userMaster: user.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = user.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield UserError(message: _error.getErrorMessage());
    }
  }

  Stream<UserState> _mapUserLoginToState(UserLoginEvent event) async* {
    BaseModel<UserMaster> user;
    yield UserLoading();
    try {
      user = await userRepository.userLogin(event.userMaster);
      //print(user);

      if (user.getException != null) {
        ServerError _error = user.getException;
        print("${_error.getErrorMessage()}  avinash data not found");
        yield UserError(message: _error.getErrorMessage());
      } else {
        yield UserLogin(userMaster: user.data);
      }
    } catch (e) {
      /**
       * repository retur dio error in basemodel exception
       * so before yeilding state make sure to check user.getexception 
       * if it is not null
       * then find the error message from servererror class 
       * and yeild the message in state
       */
      ServerError _error = user.getException;
      print(_error.getErrorMessage() + " data not found" + e.toString());
      yield UserError(message: _error.getErrorMessage());
    }
  }

  @override
  // TODO: implement initialState
  UserState get initialState => UserLoading();
}
