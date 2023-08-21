import 'package:flutter/material.dart';

void main() {
  runApp(DarkModeApp());
}

class DarkModeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), 
      darkTheme: ThemeData.light(), 
      themeMode: ThemeMode.system, 
      home: DarkModeScreen(),
    );
  }
}

class DarkModeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dark Mode Example')),
      body: Center(
        child: Text(
          'Dark mode',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
