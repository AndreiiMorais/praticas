import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String hintText;
  final bool obscureText;
  const CustomTextFieldWidget(
      {Key? key,
      required this.onChanged,
      required this.hintText,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: hintText),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
