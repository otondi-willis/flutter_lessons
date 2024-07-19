import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat App'),
        ),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Button clicked");
          },
        ),
      ),
    );
  }
}
