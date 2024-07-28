import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_bubble.dart/chat_bubble.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_input.dart';
import 'package:flutter_lessons/models/chat_message_entity.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  List<ChatMessageEntity> _messages = [
    ChatMessageEntity(
      id: '1234',
      text: 'Hello this is Willis',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      author: Author(username: 'Willinski'),
    ),
    ChatMessageEntity(
      id: '5678',
      text: 'Hi Willis, how are you?',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      author: Author(username: 'Willinski'),
    ),
    ChatMessageEntity(
      id: '9101',
      text: 'I am fine, thank you! How about you?',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      author: Author(username: 'Willinski'),
    ),
    ChatMessageEntity(
      id: '1314',
      text: 'I am also good, and you?',
      createdAt: DateTime.now().millisecondsSinceEpoch,
      author: Author(username: 'Willinski'),),
  ];

  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Hi $username',
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
                print('icon pressed');
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ChatBubble(
                        alignment: index % 2 == 0
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        entity: ChatMessageEntity(
                          id: '1234',
                          text: 'Hello this is willis',
                          createdAt: DateTime.now().millisecondsSinceEpoch,
                          author: Author(username: 'Willinski'),
                        ));
                  })),
          ChatInput(),
        ],
      ),
    );
  }
}
