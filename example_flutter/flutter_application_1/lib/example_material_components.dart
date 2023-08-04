import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Components Example'),
      ),
      body: Center(
        child: Text(
          'Tap the button below to show a message!',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Hello, how are you today?'),
              duration: Duration(seconds: 2),
            ),
          );
        },
        tooltip: 'Show Message',
        child: Icon(Icons.add),
      ),
    );
  }
}
