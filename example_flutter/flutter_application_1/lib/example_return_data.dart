import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Navigate to the SecondScreen and wait for returned data
            final returnedData = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );

            // Handle the returned data
            if (returnedData != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Returned data: $returnedData')),
              );
            }
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Return data to the previous screen
            Navigator.pop(context, 'Data from Second Screen');
          },
          child: Text('Return Data to First Screen'),
        ),
      ),
    );
  }
}

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
