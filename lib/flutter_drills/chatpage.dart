import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_bubble.dart/chat_bubble.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_input.dart';
import 'package:flutter_lessons/models/chat_message_entity.dart';
import 'package:http/http.dart' as http;


class ChatPage extends StatefulWidget {
  ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  waiter.getmenu();
  waiter.getTodaySpecialDish();
  //initial state of messages
  List<ChatMessageEntity> _messages = [];

//load json file into the project
  _loadInitialMessages() async {
    rootBundle.loadString('assets/mock_messages.json').then((response) {
      final decodedList = jsonDecode(response) as List;
      final List<ChatMessageEntity> _chatMessages = decodedList.map((ListItem) {
        return ChatMessageEntity.fromJson(ListItem);
      }).toList();
      print(_chatMessages.length);

      //final state of the messages
      setState(() {
        _messages = _chatMessages;
      });
    }).then((_){
      print('done!');
    });
    print('print something while waiting')
  }

  onMessageSent(ChatMessageEntity entity) {
    _messages.add(entity);
    setState(() {});
  }
  _getNetworkImages(){
    var endpointUrl = Uri.parse('https://pixelford.com/api/img/small/Dog_LIL_134140.jpg');
    final response = http.get(endpointUrl);
    print(response);
  }

  @override
  void initState() {
    // TODO: implement initState
    _loadInitialMessages();
    super.initState();
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
          ChatInput(
            onSubmit: onMessageSent,
          ),
        ],
      ),
    );
  }
}
