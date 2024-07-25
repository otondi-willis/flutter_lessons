import 'package:flutter/material.dart';
import 'package:flutter_lessons/utils/textfield_styles.dart';

class LoginTextField extends StatelessWidget {
 
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
   const LoginTextField({super.key, 
   required this.controller,
   required this.hintText,
   required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value != null && value.isNotEmpty && value.length < 5) {
          return 'Your username should be more than 5 characters';
        } else if (value != null && value.isEmpty) {
          return "Please type your username";
        }
        return null;
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
