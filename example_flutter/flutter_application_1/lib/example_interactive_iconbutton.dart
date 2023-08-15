import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyIconButtonExample(),
    );
  }
}

class MyIconButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('IconButton Example')),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.star),
          onPressed: () {
            print('Star button pressed');
          },
        ),
      ),
    );
  }
}


