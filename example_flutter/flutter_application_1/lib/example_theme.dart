import 'package:flutter/material.dart';

void main() {
  runApp(ThemeExampleApp());
}

class ThemeExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal, // Custom primary color
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16),
          // Customize text styles further if needed
        ),
      ),
      home: ThemeExampleScreen(),
    );
  }
}

class ThemeExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Theme Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Customized Primary Color',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 50,
              color: Colors.teal, // Using the custom primary color
              child: Center(
                child: Text(
                  'Themed Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
