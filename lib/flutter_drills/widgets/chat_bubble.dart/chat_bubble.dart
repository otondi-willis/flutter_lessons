import 'package:flutter/material.dart';
import 'package:flutter_lessons/models/chat_message_entity.dart';

class ChatBubble extends StatelessWidget {
  final ChatMessageEntity entity;
 final Alignment alignment;
  const ChatBubble({super.key, required this.alignment, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${entity.text}', style: TextStyle(fontSize: 20, color: Colors.white)),
            if(entity.text!= null)
              Image.network('${entity.imageUrl}'),
            
            
          ],
        ),
        margin: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12)),
        ),
      ),
    );
  }
}
