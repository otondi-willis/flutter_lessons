import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  Color buttonColor ;
  CounterStateful({super.key, required this.buttonColor});

  @override
  State<CounterStateful> createState() {
    State<CounterStateful> stateClassAssociatedWithThisWidget =
        _CounterStatefulState();
    return stateClassAssociatedWithThisWidget;
  }
}

class _CounterStatefulState extends State<CounterStateful> {
  int counter = 0;
  
  void increment() {
    setState(() {
      counter++;
    });

    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: widget.buttonColor,
          child: Icon(Icons.add),
          onPressed: () {
            increment();
          }),
      body: Center(
          child: Text(
        '$counter',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
