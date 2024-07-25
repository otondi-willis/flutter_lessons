import 'package:flutter/material.dart';
import 'package:flutter_lessons/flutter_drills/chatpage.dart';

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
              Image.network(
                'https://via.placeholder.com/200.png',
                height: 200,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value != null && value.isNotEmpty && value.length < 5) {
                          return 'Your username should be more than 5 characters';
                        } else if (value != null && value.isEmpty) {
                          return "Please type your username";
                        }
                        return null;
                      },
                      controller: userNameController,
                      // onChanged: (value) {
                      //   print('value : $value');
                      // },
                      decoration: InputDecoration(
                        hintText: 'Add your username',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 24,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Type your password',
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
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
