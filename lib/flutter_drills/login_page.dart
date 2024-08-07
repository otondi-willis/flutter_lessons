import 'package:flutter/material.dart';
import 'package:flutter_lessons/flutter_drills/chatpage.dart';
import 'package:flutter_lessons/flutter_drills/widgets/login_text_field.dart';
import 'package:flutter_lessons/flutter_drills/widgets/space.dart';
import 'package:flutter_lessons/services/auth_service.dart';
import 'package:flutter_lessons/utils/textfield_styles.dart';
import 'package:provider/provider.dart';
import 'package:social_media_buttons/social_media_button.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  Future<void> loginUser(BuildContext context) async {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      // if (userNameController.text.length < 5) {
      //   //throw error
      // }
      // if (passwordController.text.length < 5) {
      //   //throw error
      // }
      print(userNameController.text);
      print(passwordController.text);

      await context.read<AuthService>().loginUser(userNameController.text);
      Navigator.pushReplacementNamed(context, '/chat',
          arguments: '${userNameController.text}');
      print('login success!');
    } else {
      print('Not successful');
    }
  }

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  final _mainUrl = "https://github.com/otondi-willis";

  Widget _buildHeader(context) {
    return Column(
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
        verticalSpacing(24),
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth, image: AssetImage('assets/login.PNG')),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        verticalSpacing(24),
      ],
    );
  }

  Widget _buildFooter() {
    return Column(
      children: [
        GestureDetector(
                onTap: () async {
                  print('Link clicked');
                  if (!await launch(_mainUrl)) {
                    throw 'Could not launch';
                  }
                },
                child: Column(
                  children: [
                    Text('Find us on'),
                    Text(_mainUrl),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton.twitter(
                      size: 20,
                      color: Colors.blue,
                      url: "https://twitter.com/willisotondi"),
                  SocialMediaButton.linkedin(
                      url: "https://linkedin.com/in/willisotondi")
                ],
              )
      ],
    );
  }

  Widget _buildForm(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
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
            onPressed: () async {
              await loginUser(context);
            },
            child: Text(
              'Login!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: LayoutBuilder(
            builder: (context, BoxConstraints constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildHeader(context),
                  _buildForm(context),
                  _buildFooter(),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
