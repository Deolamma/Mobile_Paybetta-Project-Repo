import 'package:flutter/material.dart';
import 'package:paybetta/ui/shared/const_app_colors.dart';



class ValEmailField extends StatelessWidget {
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
  final Function(String?)? onSaved;
  final Function? onFieldTap;
  final Widget? label;
  final bool? filled;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const ValEmailField(
      {
        required this.obscureText,
        Key? key,
      this.hintText,
      this.label,
      this.filled,
      this.focusNode,
      this.textInputType,
      this.defaultText,
      this.controller,
      this.functionValidate,
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
      validator: _validateEmail,
      onSaved: onSaved,
      autofocus: false,
      obscureText: obscureText,
      keyboardType: TextInputType.emailAddress,
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

  String? _validateEmail(String? email) {
    RegExp regex = RegExp(r'\w+@\w+\.\w+'); // translates to word@word.word
    if (email!.isEmpty) {
      return 'We need an email address';
    } else if (!regex.hasMatch(email)) {
      return "That doesn't look like an email address";
    } else {
      return null;
    }
  }
}
