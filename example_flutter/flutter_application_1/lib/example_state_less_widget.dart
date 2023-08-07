import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int count;

  CounterDisplay(this.count);

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int count = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App (Stateless)'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterDisplay(count),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(CounterApp());
}
