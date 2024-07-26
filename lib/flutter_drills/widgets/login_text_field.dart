import 'package:flutter/material.dart';
import 'package:flutter_lessons/utils/textfield_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool hasAsterisks;
  const LoginTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.validator, this.hasAsterisks = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hasAsterisks,
      validator: (value) {
        if (validator != null) return validator!(value);
      },
      controller: controller,
      // onChanged: (value) {
      //   print('value : $value');
      // },
      decoration: InputDecoration(
        hintText: 'Add your username',
        hintStyle: ThemeTextStyle.loginTextFieldStyle,
        border: OutlineInputBorder(),
      ),
    );
  }
}
