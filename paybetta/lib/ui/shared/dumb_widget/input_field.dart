import 'package:flutter/material.dart';

import '../const_app_colors.dart';

class TextInputField extends StatelessWidget {
  final TextInputType? textInputType;
  final String? hintText;
  final Widget? suffixIcon;
  final String? defaultText;
  final Widget? label;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Function? functionValidate;
  final String? parametersValidate;
  final TextInputAction? actionKeyboard;
  final bool? filled;
  final Function(String?)? onSaved;
  final Function? onFieldTap;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const TextInputField({
    this.textInputType,
    this.hintText,
    this.filled,
    this.suffixIcon,
    this.label,
    this.defaultText,
    this.focusNode,
    this.controller,
    this.functionValidate,
    this.parametersValidate,
    this.actionKeyboard,
    this.onSaved,
    this.onFieldTap,
    this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: onSaved,
      validator: validator,
      autofocus: false,
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
}
