import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyInkWellExample(),
    );
  }
}

class MyInkWellExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('InkWell Example')),
      body: Center(
        child: InkWell(
          onTap: () {
            print('Button tapped');
          },
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Text(
              'Tap me!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

