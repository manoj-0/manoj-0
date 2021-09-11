import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:tda_academy/bloc/course/coursebloc.dart';
import 'package:tda_academy/models/model_barrel.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/utils/PreferenceUtils.dart';
import 'package:tda_academy/utils/constants.dart';
import 'package:tda_academy/utils/styles/styles.dart';
import 'package:tda_academy/widget/custom_input_field.dart';
import 'package:url_launcher/url_launcher.dart';

class Checkout extends StatefulWidget {
  final CourseMaster courseMaster;

  const Checkout({Key key, this.courseMaster}) : super(key: key);
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();
  final _userNameController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _zipCodeController = TextEditingController();
  final _emailController = TextEditingController();

  CourseBloc _courseBloc;
  Razorpay _razorpay;
  String accessToken;
  String userNumber;
  int userId;
  bool _termsChecked = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    accessToken = PreferenceUtils.getString(access_token, defValue: def_val_sf);
    userId = PreferenceUtils.getInt(user_id);
    userNumber = PreferenceUtils.getString(phoneNumber, defValue: def_val_sf);
    _courseBloc = CourseBloc();

    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

/**
 * razor pay integration start
 */
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId, toastLength: Toast.LENGTH_SHORT);

    // first save the payment info then its course mapping
    _courseBloc.add(SavePaymentInfo(
        accessToken: accessToken,
        userName: _userNameController.text.toString(),
        address: _addressController.text.toString(),
        courseId: widget.courseMaster.id,
        city: _cityController.text.toString(),
        state: _stateController.text.toString(),
        zipCode: _zipCodeController.text.toString(),
        amount: (double.parse(widget.courseMaster.offerPrice) > 0)
            ? double.parse(widget.courseMaster.offerPrice)
            : double.parse(widget.courseMaster.actualPrice),
        userId: userId,
        orderId: response.orderId ?? response.paymentId,
        currency: "INR",
        transactionDate: DateTime.now().toString(),
        transactionId: response.paymentId,
        status: 1,
        modeId: "2"));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print(response.message);
    Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message,
        toastLength: Toast.LENGTH_SHORT);
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName,
        toastLength: Toast.LENGTH_SHORT);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_live_JPrI5eDMmX2aa4',
      'amount': (double.parse(widget.courseMaster.offerPrice) > 0)
          ? double.parse(widget.courseMaster.offerPrice) * 100
          : double.parse(widget.courseMaster.actualPrice) * 100,
      'name': _userNameController.text.toString(),
      'description': 'Payment',
      'prefill': {
        'contact': userNumber,
        'email': _emailController.text.toString()
      },
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

/**
 * razorpay integration end
 */

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _courseBloc,
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: maincolor,
          titleSpacing: 0.0,
          title: Text(
            "Checkout",
            style: kLabelStyleBold.apply(color: kWhite, fontSizeDelta: 8),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Scaffold(
          backgroundColor: kWhite,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25, top: kPaddingS),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                  ),
                  child: Text(
                    billing_info,
                    style: kBoldLabel.apply(color: kBlack),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
                  decoration: BoxDecoration(),
                  child: FormBuilder(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          alignment: Alignment.topCenter,
                          child: CustomInputField(
                            label: full_name,
                            prefixedIcon: false,
                            obscureText: false,
                            controller: _userNameController,
                            validators: [
                              FormBuilderValidators.required(context),
                            ],
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          alignment: Alignment.topCenter,
                          child: CustomInputField(
                            label: email,
                            prefixedIcon: false,
                            obscureText: false,
                            controller: _emailController,
                            validators: [
                              FormBuilderValidators.required(context),
                            ],
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          alignment: Alignment.topCenter,
                          child: CustomInputField(
                            label: address,
                            maxline: 3,
                            prefixedIcon: false,
                            obscureText: false,
                            controller: _addressController,
                            validators: [
                              FormBuilderValidators.required(context),
                            ],
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          alignment: Alignment.topCenter,
                          child: CustomInputField(
                            label: city,
                            prefixedIcon: false,
                            obscureText: false,
                            controller: _cityController,
                            validators: [
                              FormBuilderValidators.required(context),
                            ],
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          alignment: Alignment.topCenter,
                          child: CustomInputField(
                            label: state,
                            prefixedIcon: false,
                            obscureText: false,
                            controller: _stateController,
                            validators: [
                              FormBuilderValidators.required(context),
                            ],
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 15.0, top: 15.0, right: 15.0),
                          alignment: Alignment.topCenter,
                          child: CustomInputField(
                            label: zipcode,
                            prefixedIcon: false,
                            obscureText: false,
                            controller: _zipCodeController,
                            validators: [
                              FormBuilderValidators.required(context),
                            ],
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.done,
                          ),
                        ),

                        //save payment info blocbuilder
                        BlocBuilder<CourseBloc, CourseState>(
                          cubit: _courseBloc,
                          builder: (context, state) {
                            if (state is CourseBought) {
                              // save user course mapping from here
                              print("course has been saved in mapping");
                              // BlocProvider.of<CourseBloc>(context).add(
                              //     SaveUserCourse(
                              //         accessToken: accessToken,
                              //         userId: userId,
                              //         courseId: widget.courseMaster.id));
                              _courseBloc.add(SaveUserCourse(
                                  accessToken: accessToken,
                                  userId: userId,
                                  courseId: widget.courseMaster.id));
                              return Container();
                            } else if (state is IsLoading) {
                              print("rendering body");
                              return LoadingUi();
                            } else {
                              return Container();
                            }
                          },
                        ),

                        //save user course mapping
                        BlocListener<CourseBloc, CourseState>(
                          listener: (context, state) {
                            if (state is UserCourseSaved) {
                              // redirect from here
                              Navigator.of(context).popAndPushNamed(
                                  mycourseDetail,
                                  arguments: widget.courseMaster);
                              //Navigator.pop(context);
                              // Navigator.of(context).popAndPushNamed(
                              //     dashboardRoute,
                              //     arguments: state.userMaster);
                            }
                          },
                          child: BlocBuilder<CourseBloc, CourseState>(
                            builder: (context, state) {
                              return Container();
                            },
                          ),
                        ),
                        CheckboxListTile(
                          activeColor: maincolor,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('I agree to '),
                              InkWell(
                                onTap: () {
                                  _launchURL();
                                },
                                child: Text(
                                  'Terms and conditions',
                                  style: kLabelStyle.apply(color: maincolor),
                                ),
                              )
                            ],
                          ),
                          value: _termsChecked,
                          checkColor: kWhite,
                          onChanged: (bool value) =>
                              setState(() => _termsChecked = value),
                          subtitle: !_termsChecked
                              ? Padding(
                                  padding: EdgeInsets.fromLTRB(12.0, 0, 0, 0),
                                  child: Text(
                                    'Required field',
                                    style: TextStyle(
                                        color: Color(0xFFe53935), fontSize: 12),
                                  ),
                                )
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: checkout(),
      ),
    );
  }

  _launchURL() async {
    const url = "${base_url}term_condition";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget checkout() {
    print("rendering footer");
    return BottomAppBar(
      elevation: 3,
      color: kWhite,
      child: Container(
        padding: const EdgeInsets.only(left: 12.0, right: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("\u20B9${widget.courseMaster.actualPrice}",
                        style: kBoldLabelS.apply(
                            color: kGrey,
                            decoration: TextDecoration.lineThrough)),
                    Text("\u20B9${widget.courseMaster.offerPrice}",
                        style: kBoldLabel.apply(color: kBlack)),
                  ],
                ),
              ),
            ),
            RaisedButton(
              elevation: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {
                if (_formKey.currentState.saveAndValidate() && _termsChecked) {
                  //showLoaderDialog(context);

                  openCheckout();
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0)),
              color: maincolor,
              child: Container(
                margin:
                    EdgeInsets.only(left: 5.0, right: 5.0, top: 12, bottom: 12),
                child: Text('Proceed to buy',
                    style: kBoldLabelS.apply(color: kWhite)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
