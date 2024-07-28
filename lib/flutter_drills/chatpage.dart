import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_bubble.dart/chat_bubble.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_input.dart';
import 'package:flutter_lessons/models/chat_message_entity.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

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
      author: Author(username: 'Willis'),
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
      author: Author(username: 'Willis'),
    ),
  ];

//load json file into the project
  _loadInitialMessages() {
    final response = rootBundle.loadString('assets/mock_messages.json');
  }

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
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    return ChatBubble(
                        alignment:
                            _messages[index].author.username == 'Willinski'
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                        entity: _messages[index]);
                  })),
          ChatInput(),
        ],
      ),
    );
  }
}
