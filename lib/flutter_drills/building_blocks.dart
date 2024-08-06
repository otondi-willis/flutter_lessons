import 'package:flutter/material.dart';
import 'package:flutter_lessons/flutter_drills/chatpage.dart';
import 'package:flutter_lessons/flutter_drills/counter_stateful_demo.dart';
import 'package:flutter_lessons/flutter_drills/login_page.dart';
import 'package:flutter_lessons/flutter_drills/widgets/chat_input.dart';
import 'package:flutter_lessons/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() {
  AuthService.init();
  runApp(Provider(
    create: (BuildContext context) => AuthService(),
    child: ChatApp(),
  ));
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide Flutter's debug mode banner

      title: 'Chat App1',
      theme: ThemeData(
        canvasColor: Colors.transparent,
        primarySwatch: Colors.red,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
      ),
      //home: CounterStateful(buttonColor: Colors.blue     ),
      home: LoginPage(),
      routes: {'/chat': (context) => ChatPage()},
    );
  }
}
