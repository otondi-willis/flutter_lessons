import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  void loginUser() {
    if (userNameController.text.length < 5) {
      //throw error
    }
    if (passwordController.text.length < 5) {
      //throw error
    }
    print(userNameController.text);
    print(passwordController.text);
    print('login success!');
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
              TextFormField(
                validator: (value) {
                  if (value != null && value.isNotEmpty && value.length < 5) {
                    return 'Your username should be more than 5 characters';
                  }
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
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Type your password',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: loginUser,
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
