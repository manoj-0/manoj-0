import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tda_academy/utils/constants.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final IconData prefixIcon;
  final bool obscureText;
  final TextEditingController controller;
  final IconData sufixIcon;
  final List<String Function(String)> validators;
  final TextInputType keyboardType;
  final InputDecoration decoration;
  final bool prefixedIcon;
  final int maxline;
  final TextInputAction textInputAction;

  const CustomInputField({
    @required this.label,
    this.prefixIcon,
    @required this.controller,
    @required this.validators,
    @required this.keyboardType,
    this.sufixIcon,
    this.textInputAction,
    this.decoration,
    this.obscureText = false,
    this.maxline,
    this.prefixedIcon = true,
  }) : assert(label != null);

  @override
  Widget build(BuildContext context) {
    return inputFeild();
  }

  Widget inputFeild() {
    return FormBuilderTextField(
      cursorColor: kGrey,
      maxLines: maxline,
      enableInteractiveSelection: false,
      autovalidateMode: AutovalidateMode.disabled,
      name: label,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixedIcon
            ? Icon(
                prefixIcon,
                color: kBlack.withOpacity(0.5),
              )
            : null,
        hintText: label,
        hintStyle: TextStyle(color: kGrey),
        contentPadding: EdgeInsets.all(15.0),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kBlack.withOpacity(.12))),
        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: kred)),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: maincolor)),
        focusedErrorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: kred)),
        fillColor: Colors.transparent,
      ),
      //validators: validators,
      validator: validators[0],
      keyboardType: keyboardType,
      style: TextStyle(color: kBlack),
      textInputAction: textInputAction,
    );
  }
}
