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
      
      body: Column(
        children: [
          Text('Lets sign you in', 
      style: TextStyle(
        fontSize: 30, 
        color: Colors.brown,
        fontWeight: FontWeight.bold, 
        letterSpacing: 0.5),),
          Text('Welcome back! \n You\'ve been missed!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.blueGrey),
            ),
            Image.network('https://via.placeholder.com/200.png', 
              height: 200,),

        ],
      ),
    );
  }
}