import 'package:flutter/material.dart';

void main() {
  runApp(ResponsiveExampleApp());
}

class ResponsiveExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveExampleScreen(),
    );
  }
}

class ResponsiveExampleScreen extends StatelessWidget {
  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('This is a responsive dialog.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlert(context);
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}

