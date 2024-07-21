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
              Container(
                height: 200,
                width: 200,
                
                //child: FlutterLogo(),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage('https://via.placeholder.com/150.png'),
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
              )

        ],
      ),
    );
  }
}