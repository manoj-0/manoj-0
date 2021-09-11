import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tda_academy/bloc/user/userbloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/error_ui.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/utils/RandomDigits.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/widget/custom_input_field.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  UserBloc _userBloc;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _phoneController = TextEditingController();

  int otpCode = 0;
  UserMaster userMaster;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userBloc = UserBloc();
    userMaster = UserMaster();
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
                              child: Text(
                                  'Please enter your registered mobile number.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500))),
                          FormBuilder(
                            key: _formKey,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 15.0, top: 15.0, right: 15.0),
                                  alignment: Alignment.topCenter,
                                  child: CustomInputField(
                                    label: phoneNumber,
                                    prefixIcon: Icons.phone,
                                    obscureText: false,
                                    controller: _phoneController,
                                    validators: [
                                      FormBuilderValidators.required(context),
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
                                  if (state is ForgotOtpSent) {
                                    //Navigator.pop(context);
                                    Navigator.of(context).pushNamed(
                                      verificationRoute,
                                      arguments: userMaster,
                                    );
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
                            print(_phoneController.text);
                            //loginStore.validateOtpAndLogin(context, text);
                            print(RandomDigits.getInteger(6));
                            otpCode = RandomDigits.getInteger(6);
                            // Navigator.of(context).pushNamed(
                            //   verificationRoute,
                            //   arguments: otpCode,
                            // );

                            userMaster.phoneNumber =
                                _phoneController.text.toString().trim();
                            userMaster.otp = "${otpCode}";
                            userMaster.message =
                                "Verify this otp to get new password ${otpCode}";

                            _userBloc.add(
                                ForgotPasswordEvent(userMaster: userMaster));
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
