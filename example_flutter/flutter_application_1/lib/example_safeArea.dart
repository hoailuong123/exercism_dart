import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySafeAreaExample(),
    );
  }
}

class MySafeAreaExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SafeArea Example')),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
            child: Text(
              'Safe Area Content',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
