import 'package:flutter/material.dart';
import 'package:flutter_lessons/flutter_drills/chatpage.dart';
import 'package:flutter_lessons/flutter_drills/counter_stateful_demo.dart';
import 'package:flutter_lessons/flutter_drills/login_page.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide Flutter's debug mode banner
      
      title: 'Chat App1',
      theme: ThemeData(primarySwatch: Colors.red,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),),
      home: CounterStateful(buttonColor: Colors.blue     ),
    );
  }
}

