import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the ModalRoute
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Text('Received argument: ${args['message']}'),
      ),
    );
  }
}
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Define the arguments to pass
            Map<String, dynamic> arguments = {'message': 'Hello from First Screen!'};

            // Navigate to the SecondScreen with arguments
            Navigator.pushNamed(context, '/second', arguments: arguments);
          },
          child: Text('Go to Second Screen'),
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
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}