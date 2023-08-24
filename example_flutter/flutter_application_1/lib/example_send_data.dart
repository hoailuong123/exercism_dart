import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String message = 'Hello from First Screen!';

    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen(message)),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}class SecondScreen extends StatelessWidget {
  final String receivedMessage;

  SecondScreen(this.receivedMessage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Received message:'),
            SizedBox(height: 16),
            Text(receivedMessage),
          ],
        ),
      ),
    );
  }
}