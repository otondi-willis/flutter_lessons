import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white),
          ),
          Expanded(child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(),
          )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send, color: Colors.white),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }
}
