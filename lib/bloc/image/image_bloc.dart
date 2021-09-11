import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tda_academy/models/ServerError.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/resources/user/user_repository.dart';
import 'package:tda_academy/resources/user/user_repositoryimpl.dart';
part 'image_event.dart';
part 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  UserRepository userRepository = new UserRepositoryImpl();

  ImageBloc() : super(ImageInitializing());
  @override
  Stream<ImageState> mapEventToState(
    ImageEvent event,
  ) async* {
    if (event is LoadImageEvent) {
      yield* _mapUserLoginToState(event);
    }

    if (event is UserImageUpload) {
      yield* _mapImageUploadState(event);
    }
  }

/**
 * user image uploading
 */
  Stream<ImageState> _mapImageUploadState(UserImageUpload event) async* {
    BaseModel<ImageMaster> image;
    yield ImageLoading();
    try {
      image = await userRepository.uploadImage(
          event.accessToken, event.userImage, event.userId, event.ownerType);
      //print(user);

      if (image.getException != null) {
        ServerError _error = image.getException;
        print("${_error.getErrorMessage()}  avinash data not found");
        yield ImageError(message: _error.getErrorMessage());
      } else {
        yield UserImageUploaded(imageMaster: image.data);
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
      yield ImageError(message: _error.getErrorMessage());
    }
  }

  Stream<ImageState> _mapUserLoginToState(LoadImageEvent event) async* {
    BaseModel<SyllabusMaster> user;
    yield ImageLoading();
    try {
      //user = await userRepository.userLogin(event.userMaster);

      if (user.getException != null) {
        ServerError _error = user.getException;
        //print("${_error.getErrorMessage()}  avinash data not found");
        yield ImageError(message: _error.getErrorMessage());
      } else {
        yield ImageLoaded(imageMaster: null);
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
      yield ImageError(message: _error.getErrorMessage());
    }
  }

  @override
  // TODO: implement initialState
  ImageState get initialState => ImageLoading();
}
