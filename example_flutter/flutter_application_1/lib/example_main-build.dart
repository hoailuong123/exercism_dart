import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp is a top-level widget that configures the basic app settings.
      title: 'My Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold is a widget that provides a basic structure for the app's UI.
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Center(
        child: Text('Hello, Flutter!'),
      ),
    );
  }
}