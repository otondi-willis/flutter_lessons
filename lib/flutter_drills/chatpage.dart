import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Hi Willis', style: TextStyle(color: Colors.blueGrey),),
        actions: [
          IconButton(
              onPressed: () {
                print('icon pressed');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Container(),
    );
  }
}
