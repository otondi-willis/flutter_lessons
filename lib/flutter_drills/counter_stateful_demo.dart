import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  const CounterStateful({super.key});

  @override
  State<CounterStateful> createState() {
    State<CounterStateful> stateClassAssociatedWithThisWidget =
        _CounterStatefulState();
    return stateClassAssociatedWithThisWidget;
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){}),
      body: Text('0', style: TextStyle(fontSize: 30),),
      
    );
  }
}
