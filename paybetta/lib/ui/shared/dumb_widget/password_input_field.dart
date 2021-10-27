import 'package:flutter/material.dart';

import '../const_app_colors.dart';

class ValPasswordField extends StatelessWidget {
  final TextInputType? textInputType;
  final String? hintText;
  final Widget? suffixIcon;
  final String? defaultText;
  final FocusNode? focusNode;
  final bool obscureText;
  final TextEditingController? controller;
  final Function? functionValidate;
  final String? parametersValidate;
  final TextInputAction? actionKeyboard;
  final bool? filled;
  final Widget? label;
  final Function(String?)? onSaved;
  final Function? onFieldTap;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const ValPasswordField(
      {Key? key,
      this.hintText,
      this.focusNode,
      this.textInputType,
      this.defaultText,
      this.label,
      required this.obscureText,
      this.controller,
      this.functionValidate,
      this.filled,
      this.parametersValidate,
      this.actionKeyboard = TextInputAction.next,
      this.onSaved,
      this.onFieldTap,
      this.validator,
      this.keyboardType,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: _validatePassword,
      onSaved: onSaved,
      autofocus: false,
      obscureText: true,
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Colors.black, fontSize: 16),
      decoration: InputDecoration(
        label: label,
        errorStyle: TextStyle(),
        fillColor: const Color(0xFFF6DADD),
        filled: filled,
        suffixIcon: suffixIcon,
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: pbBorderColor)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: pbBorderColor)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: pbBorderColor)),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: pbErrorColor),
        ),
      ),
    );
  }

  String? _validatePassword(String? pass1) {
    RegExp hasUpper = RegExp(r'[A-Z]');
    RegExp hasLower = RegExp(r'[a-z]');
    RegExp hasDigit = RegExp(r'\d');
    RegExp hasPunct = RegExp(r'[_!@#\$&*~-]');
    if (!RegExp(r'.{8,}').hasMatch(pass1!)) {
      return 'Passwords must have at least 8 characters';
    }
    if (!hasUpper.hasMatch(pass1)) {
      return 'Passwords must have at least one uppercase character';
    }
    if (!hasLower.hasMatch(pass1)) {
      return 'Passwords must have at least one lowercase character';
    }
    if (!hasDigit.hasMatch(pass1)) {
      return 'Passwords must have at least one number';
    }
    if (!hasPunct.hasMatch(pass1)) {
      return 'Passwords need at least one special character like !@#\$&*~-';
    }
    return null;
  }
}
