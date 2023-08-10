import 'package:flutter/material.dart';

void main() {
  runApp(ResponsiveAdaptiveExampleApp());
}

class ResponsiveAdaptiveExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveAdaptiveExampleScreen(),
    );
  }
}

class ResponsiveAdaptiveExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive & Adaptive Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Responsive Container',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width > 600 ? 400 : 200,
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Adaptive Container',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
