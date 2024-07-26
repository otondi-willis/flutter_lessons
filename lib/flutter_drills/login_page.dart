import 'package:flutter/material.dart';
import 'package:flutter_lessons/flutter_drills/chatpage.dart';
import 'package:flutter_lessons/flutter_drills/widgets/login_text_field.dart';
import 'package:flutter_lessons/flutter_drills/widgets/space.dart';
import 'package:flutter_lessons/utils/textfield_styles.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  void loginUser(context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      // if (userNameController.text.length < 5) {
      //   //throw error
      // }
      // if (passwordController.text.length < 5) {
      //   //throw error
      // }
      print(userNameController.text);
      print(passwordController.text);
      Navigator.pushReplacementNamed(context,'/chat', arguments: '${userNameController.text}'
      );
      print('login success!');
    } else {
      print('Not successful');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Lets sign you in',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
              Text(
                'Welcome back! \n You\'ve been missed!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.blueGrey),
              ),
              Image.asset(
                'assets/login.PNG',
                height: 200,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    LoginTextField(
                      hintText: "Enter your username",
                      validator: (value) {
        if (value != null && value.isNotEmpty && value.length < 5) {
          return 'Your username should be more than 5 characters';
        } else if (value != null && value.isEmpty) {
          return "Please type your username";
        }
        return null;
      },
      controller: userNameController,
                    ),
                    verticalSpacing(24),
                    LoginTextField(
                      hasAsterisks: true,
                      hintText: "Enter your password",
                      controller: passwordController,
                    
                      
                    ),
                  ],
                ),
              ),
              verticalSpacing(24),
              ElevatedButton(
                  onPressed: (){
                    loginUser(context);
                  },
                  child: Text(
                    'Login!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                  )),
              // OutlinedButton(onPressed: () {}, child: FlutterLogo()),
              // TextButton(
              //   onPressed: () {},
              //   child: Text('Textbutton'),
              // ),
              GestureDetector(
                onTap: () {
                  print('Link clicked');
                },
                child: Column(
                  children: [
                    Text('Find us on'),
                    Text('url'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
