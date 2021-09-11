import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tda_academy/bloc/user/user_bloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/error_ui.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/widget/custom_input_field.dart';
import 'package:tda_academy/widget/loading_dialog.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  UserBloc _userBloc;
  UserMaster _userMaster;
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
    _userBloc = UserBloc();
    _userMaster = UserMaster();
    super.initState();
  }

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _userBloc,
      child: Scaffold(
        backgroundColor: kWhite,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)),
                    color: maincolor.withOpacity(0.1),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 25, top: kPaddingS),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                ),
                child: Text(
                  please_login,
                  style: kBoldLabel.apply(color: kBlack),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
                decoration: BoxDecoration(
                    /* boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.10),
                          offset: Offset(0, 4),
                          blurRadius: 10)
                    ], */
                    ),
                child: FormBuilder(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                        alignment: Alignment.topCenter,
                        child: CustomInputField(
                          label: phoneNumber,
                          prefixIcon: Icons.phone,
                          obscureText: false,
                          controller: _emailController,
                          validators: [
                            FormBuilderValidators.required(context),
                          ],
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                        alignment: Alignment.topCenter,
                        child: FormBuilderTextField(
                          name: password,
                          autovalidateMode: AutovalidateMode.disabled,
                          enableInteractiveSelection: false,
                          controller: _passwordController,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            /* floatingLabelBehavior: FloatingLabelBehavior.auto,
                              labelText: "Password", */
                            prefixIcon: Icon(
                              Icons.lock,
                              color: kBlack.withOpacity(0.5),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: kBlack.withOpacity(0.5),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                }),
                            hintText: password,
                            hintStyle: TextStyle(color: kGrey),
                            contentPadding: EdgeInsets.all(15.0),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kBlack.withOpacity(.12))),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: kred)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kThemePrimaryColor)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: kred)),
                            fillColor: Colors.transparent,
                          ),
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: kBlack),
                          textInputAction: TextInputAction.done,
                          validator: FormBuilderValidators.required(context,
                              errorText: password),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      BlocListener<UserBloc, UserState>(
                          listener: (context, state) {
                        if (state is UserLogin) {
                          PreferenceUtils.putInt(
                              user_id, state.userMaster.userId);
                          PreferenceUtils.putString(
                              access_token, state.userMaster.accessToken);
                          PreferenceUtils.putString(
                              user_type, state.userMaster.userTypeId);
                          PreferenceUtils.putString(
                              phoneNumber, state.userMaster.phoneNumber);
                          //Navigator.pop(context);
                          Navigator.of(_keyLoader.currentContext,
                                  rootNavigator: true)
                              .pop();
                          Navigator.of(context).popAndPushNamed(dashboardRoute,
                              arguments: state.userMaster);
                        } else if (state is UserError) {
                          Navigator.of(_keyLoader.currentContext,
                                  rootNavigator: true)
                              .pop();
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
                      _loginButton(context),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        width: double.infinity,
                        child: Row(
                          children: [
                            // Expanded(
                            //   flex: 2,
                            //   child: InkWell(
                            //     onTap: () {},
                            //     child: Text(forgot_password,
                            //         style: kLabelStyle.apply(color: kBrown)),
                            //   ),
                            // ),
                            // Expanded(
                            //   child: Align(
                            //     alignment: Alignment.centerRight,
                            //     child: InkWell(
                            //       onTap: () {
                            //         Navigator.of(context)
                            //             .popAndPushNamed(registerRoute);
                            //       },
                            //       child: Text(register,
                            //           style: kLabelStyle.apply(color: kBrown)),
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).popAndPushNamed(registerRoute);
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Center(
                            child: Text(register,
                                style: kLabelStyleBold.apply(color: maincolor)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(forgotpassword);
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Center(
                            child: Text(forgot_password,
                                style: kLabelStyleBold.apply(color: kred)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(dashboardRoute);
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Center(
                            child: Text("go back",
                                style: kLabelStyleBold.apply(color: kBlack)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /*Container(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:[
                        Container(
                          height: 40.0,width: 70.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.transparent.withOpacity(0.10), offset: Offset(0,4), blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft:Radius.circular(80.0),
                              topRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                            color: Colors.transparent.withOpacity(0.1),
                          ),
                        ),
                      ],
                    ),   
                  ),*/
            ],
          ),
        ),
      ),
    );
  }

  void _showError(String error) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(error),
      backgroundColor: Theme.of(context).errorColor,
    ));
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: 50,
      child: RaisedButton(
        onPressed: () {
          if (_formKey.currentState.saveAndValidate()) {
            //showLoaderDialog(context);
            LoadingDialog.showLoadingDialog(context, _keyLoader);
            print(_formKey.currentState.value);
            print(_emailController.text);
            print(_passwordController.text);
            _userMaster.phoneNumber = _emailController.text;
            _userMaster.password = _passwordController.text;
            _userMaster.userType = 3;
            _userBloc.add(UserLoginEvent(userMaster: _userMaster));
          }
        },
        color: kBlack,
        textColor: Colors.white,
        child: Text("Login".toUpperCase(),
            style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 4)),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: kBlack)),
      ),
    );
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Please wait...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
