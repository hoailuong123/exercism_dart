import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('SingleChildScrollView Example')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(height: 200, color: Colors.red),
              Container(height: 200, color: Colors.blue),
              Container(height: 200, color: Colors.green),
              Container(height: 200, color: Colors.pink),
              Container(height: 200, color: Colors.purple),
              Container(height: 200, color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
