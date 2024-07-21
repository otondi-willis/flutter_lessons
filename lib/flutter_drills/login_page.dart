import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
          ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Button clicked");
          },
        ),
      body: Text('Lets sign you in'),
    );
  }
}