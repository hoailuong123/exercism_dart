import 'package:flutter/material.dart';

void main() {
  runApp(MediaQueryExampleApp());
}

class MediaQueryExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQueryExampleScreen(),
    );
  }
}

class MediaQueryExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;

    return Scaffold(
      appBar: AppBar(title: Text('MediaQuery Example')),
      body: Center(
        child: Container(
          width: screenWidth * 0.7,
          height: 200,
          color: Colors.blue,
          child: Center(
            child: Text(
              'Responsive Container',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
