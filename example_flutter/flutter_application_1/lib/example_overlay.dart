import 'package:flutter/material.dart';

void main() => runApp( OverlayExample());

class OverlayExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Overlay Example')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Show overlay entry when button is pressed
              Overlay.of(context)?.insert(
                OverlayEntry(builder: (BuildContext context) {
                  return Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue.withOpacity(0.5),
                      child: Text('Overlay Content'),
                    ),
                  );
                }),
              );
            },
            child: Text('Show Overlay'),
          ),
        ),
      ),
    );
  }
}
