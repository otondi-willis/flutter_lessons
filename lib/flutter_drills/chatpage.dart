import 'package:flutter/material.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_bubble.dart/chat_bubble.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Hi Willis',
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print('icon pressed');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatBubble(alignment:Alignment.centerLeft, message:'Hi, this is your message!'),
                ChatBubble(alignment:Alignment.centerRight, message:'Hi, this is your message!'),
                ChatBubble(alignment:Alignment.centerRight, message:'Hi, this is your message!')
              ],
            ),
          ),
          ChatInput(),
          
        ],
      ),
    );
  }
}
