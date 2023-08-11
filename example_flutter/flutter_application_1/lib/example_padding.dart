import 'package:flutter/material.dart';

void main() {
  runApp(PaddingExampleApp());
}

class PaddingExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaddingExampleScreen(),
    );
  }
}

class PaddingExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Padding Example')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0), 
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Padded Button'),
          ),
        ),
      ),
    );
  }
}
