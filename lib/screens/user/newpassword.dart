import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tda_academy/bloc/user/user_bloc.dart';
import 'package:tda_academy/models/user/UserMaster.dart';
import 'package:tda_academy/utils/RandomDigits.dart';
import 'package:tda_academy/utils/route_constants.dart';
import 'package:tda_academy/utils/strings_constants.dart';
import 'package:tda_academy/utils/theme_constants.dart';
import 'package:tda_academy/widget/custom_input_field.dart';

import '../error_ui.dart';
import '../loading_ui.dart';

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  UserBloc _userBloc;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _phoneController = TextEditingController();
  int otpCode = 0;
  UserMaster userMaster;
  @override
  void initState() {
    // ignore: todo
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
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .20,
                      width: MediaQuery.of(context).size.height * .25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: maincolor.withOpacity(0.1),
                        ),
                      ),
                    ),
                  ),
                  FormBuilder(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          alignment: Alignment.topCenter,
                          child: CustomInputField(
                            label: newpassword,
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
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          alignment: Alignment.topCenter,
                          child: CustomInputField(
                            label: confirm_password,
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
                          userMaster.otp = "$otpCode";
                          userMaster.message =
                              "Verify this otp to get new password $otpCode";

                          // _userBloc
                          //     .add(UpdatePasswordEvent(userMaster: userMaster));
                        }
                      },
                      color: maincolor,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(14))),
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
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                  // Container(
                  //   padding:
                  //       EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                  //   alignment: Alignment.topCenter,
                  //   child: FormBuilderTextField(
                  //     name: confirmpassword,
                  //     autovalidateMode: AutovalidateMode.disabled,
                  //     enableInteractiveSelection: false,
                  //     // controller: _passwordController,
                  //     // obscureText: !_passwordVisible,
                  //     decoration: InputDecoration(
                  //       /* floatingLabelBehavior: FloatingLabelBehavior.auto,
                  //                 labelText: "Password", */
                  //       prefixIcon: Icon(
                  //         Icons.lock,
                  //         color: kBlack.withOpacity(0.5),
                  //       ),
                  //       suffixIcon: IconButton(
                  //           icon: Icon(
                  //             //     _passwordVisible
                  //             Icons.visibility,
                  //             //  : Icons.visibility_off,
                  //             color: kBlack.withOpacity(0.5),
                  //           ),
                  //           onPressed: () {}),
                  //       hintText: confirmpassword,
                  //       hintStyle: TextStyle(color: kGrey),
                  //       contentPadding: EdgeInsets.all(15.0),
                  //       filled: true,
                  //       enabledBorder: OutlineInputBorder(
                  //           borderSide:
                  //               BorderSide(color: kBlack.withOpacity(.12))),
                  //       errorBorder: OutlineInputBorder(
                  //           borderSide: BorderSide(color: kred)),
                  //       focusedBorder: OutlineInputBorder(
                  //           borderSide: BorderSide(color: kThemePrimaryColor)),
                  //       focusedErrorBorder: OutlineInputBorder(
                  //           borderSide: BorderSide(color: kred)),
                  //       fillColor: Colors.transparent,
                  //     ),
                  //     keyboardType: TextInputType.text,
                  //     style: TextStyle(color: kBlack),
                  //     textInputAction: TextInputAction.done,
                  //     validator: FormBuilderValidators.required(context,
                  //         errorText: password),
                  //   ),
                  // ),
                  // Container(
                  //   margin: const EdgeInsets.symmetric(
                  //       horizontal: 20, vertical: 10),
                  //   constraints: const BoxConstraints(maxWidth: 500),
                  //   child: RaisedButton(
                  //     onPressed: () {
                  //       Navigator.of(context).popAndPushNamed(loginRoute);
                  //     },
                  //     color: maincolor,
                  //     shape: const RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.all(Radius.circular(14))),
                  //     child: Container(
                  //       padding: const EdgeInsets.symmetric(
                  //           vertical: 8, horizontal: 8),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Text(
                  //             'Confirm',
                  //             style: TextStyle(color: Colors.white),
                  //           ),
                  //           Container(
                  //             padding: const EdgeInsets.all(8),
                  //             decoration: BoxDecoration(
                  //               borderRadius:
                  //                   const BorderRadius.all(Radius.circular(20)),
                  //               color: maincolor.withAlpha(5),
                  //             ),
                  //             child: Icon(
                  //               Icons.arrow_forward_ios,
                  //               color: Colors.white,
                  //               size: 16,
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
