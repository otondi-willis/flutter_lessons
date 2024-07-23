import 'package:flutter/material.dart';

class CounterStateful extends StatefulWidget {
  Color buttonColor;
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
    if (mounted) {
      setState(() {
        counter++;
      });
    }

    print(counter);
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
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
