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
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Hi, this is your message', 
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                )),
                Image.network('https://via.placeholder.com/200.png'),
              ],
            ),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Hi, this is your message', 
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                )),
                Image.network('https://via.placeholder.com/200.png'),
              ],
            ),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Hi, this is your message', 
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                )),
                Image.network('https://via.placeholder.com/200.png'),
              ],
            ),
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
