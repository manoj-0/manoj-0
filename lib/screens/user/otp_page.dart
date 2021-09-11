import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tda_academy/bloc/user/userbloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/error_ui.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/theme_constants.dart';
import 'package:tda_academy/widget/custom_input_field.dart';

import 'newpassword.dart';

class OtpPage extends StatefulWidget {
  final UserMaster userMaster;
  const OtpPage({Key key, this.userMaster}) : super(key: key);
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  UserBloc _userBloc;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _otpController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  int otpCode = 0;

  @override
  void initState() {
    super.initState();
    _userBloc = UserBloc();
  }

  String text = '';

  // ignore: unused_element
  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
    });
  }

  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Center(
            child: Text(
          text[position],
          style: TextStyle(color: Colors.black),
        )),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _userBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: maincolor.withAlpha(5),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: maincolor,
                size: 16,
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text('Enter Otp and change password',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500))),
                          Container(
                            constraints: const BoxConstraints(maxWidth: 500),
                            child: FormBuilder(
                              key: _formKey,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, top: 15.0, right: 15.0),
                                      alignment: Alignment.topCenter,
                                      child: CustomInputField(
                                        label: otpNumber,
                                        prefixIcon: Icons.confirmation_number,
                                        obscureText: false,
                                        controller: _otpController,
                                        validators: [
                                          FormBuilderValidators.required(
                                              context),
                                        ],
                                        keyboardType: TextInputType.phone,
                                        textInputAction: TextInputAction.next,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    BlocListener<UserBloc, UserState>(
                                        listener: (context, state) {
                                      if (state is OtpVerified) {
                                        print("OTP verified");
                                        Fluttertoast.showToast(
                                            msg: "OTP verified",
                                            toastLength: Toast.LENGTH_SHORT);
                                        Navigator.of(context)
                                            .pushNamed(loginRoute);
                                        // Navigator.of(context)
                                        //     .popAndPushNamed(loginRoute);
                                      }
                                    }, child: BlocBuilder<UserBloc, UserState>(
                                            builder: (context, state) {
                                      /* if (state is UserInitializing) {
                                return _loginButton(context);
                                                          } else */
                                      if (state is UserLoading) {
                                        return LoadingUi();
                                      } else if (state is UserError) {
                                        //Navigator.pop(context);
                                        return ErrorUi(
                                          message: state.message,
                                        );
                                      } else {
                                        return Container();
                                      }
                                    })),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, top: 15.0, right: 15.0),
                                      alignment: Alignment.topCenter,
                                      child: CustomInputField(
                                        label: newpassword,
                                        prefixIcon: Icons.phone,
                                        obscureText: false,
                                        controller: _newPasswordController,
                                        validators: [
                                          FormBuilderValidators.required(
                                              context),
                                        ],
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.next,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    BlocListener<UserBloc, UserState>(
                                        listener: (context, state) {
                                      if (state is ForgotOtpSent) {
                                        //Navigator.pop(context);
                                        // Navigator.of(context).pushNamed(
                                        //   verificationRoute,
                                        //   //   arguments: userMaster,
                                        // );
                                      }
                                    }, child: BlocBuilder<UserBloc, UserState>(
                                            builder: (context, state) {
                                      /* if (state is UserInitializing) {
                                                          return _loginButton(context);
                                                        } else */
                                      if (state is UserLoading) {
                                        return LoadingUi();
                                      } else if (state is UserError) {
                                        //Navigator.pop(context);
                                        return ErrorUi(
                                          message: state.message,
                                        );
                                      } else {
                                        return Container();
                                      }
                                    })),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.0, top: 15.0, right: 15.0),
                                      alignment: Alignment.topCenter,
                                      child: CustomInputField(
                                        label: confirm_password,
                                        prefixIcon: Icons.phone,
                                        obscureText: false,
                                        controller: _confirmPasswordController,
                                        validators: [
                                          FormBuilderValidators.required(
                                              context),
                                        ],
                                        keyboardType: TextInputType.text,
                                        textInputAction: TextInputAction.next,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    BlocListener<UserBloc, UserState>(
                                        listener: (context, state) {
                                      if (state is ForgotOtpSent) {
                                        //Navigator.pop(context);
                                        // Navigator.of(context).pushNamed(
                                        //   verificationRoute,
                                        //   arguments: userMaster,
                                        // );
                                      }
                                    }, child: BlocBuilder<UserBloc, UserState>(
                                            builder: (context, state) {
                                      /* if (state is UserInitializing) {
                                                          return _loginButton(context);
                                                        } else */
                                      if (state is UserLoading) {
                                        return LoadingUi();
                                      } else if (state is UserError) {
                                        //Navigator.pop(context);
                                        return ErrorUi(
                                          message: state.message,
                                        );
                                      } else {
                                        return Container();
                                      }
                                    })),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.saveAndValidate()) {
                            //showLoaderDialog(context);
                            print(_formKey.currentState.value);
                            print(_otpController.text);
                            UserMaster userMaster = UserMaster();
                            userMaster.phoneNumber =
                                widget.userMaster.phoneNumber;
                            //print('bhawani' + userMaster.phoneNumber);
                            userMaster.otp =
                                _otpController.text.toString().trim();
                            userMaster.password =
                                _newPasswordController.text.toString().trim();
                            userMaster.userType = user_type_user;
                            _userBloc
                                .add(VerifyOtpEvent(userMaster: userMaster));
                          }
                        },
                        color: maincolor,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(14))),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Confirm',
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: maincolor.withAlpha(5),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // NumericKeyboard(
                    //   onKeyboardTap: _onKeyboardTap,
                    //   textColor: maincolor.withAlpha(5),
                    //   rightIcon: Icon(
                    //     Icons.backspace,
                    //     color: maincolor.withAlpha(5),
                    //   ),
                    //   rightButtonFn: () {
                    //     setState(() {
                    //       text = text.substring(0, text.length - 1);
                    //     });
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
