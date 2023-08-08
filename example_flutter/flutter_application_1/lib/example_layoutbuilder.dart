import 'package:flutter/material.dart';

void main() {
  runApp(LayoutBuilderApp());
}

class LayoutBuilderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('LayoutBuilder Example')),
        body: LayoutBuilderExample(),
      ),
    );
  }
}

class LayoutBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 300) {
            return Container(
              width: 300,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                'Wide Layout',
                style: TextStyle(color: Colors.white),
              ),
            );
          } else {
            return Container(
              width: 200,
              height: 100,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text(
                'Narrow Layout',
                style: TextStyle(color: Colors.white),
              ),
            );
          }
        },
      ),
    );
  }
}
