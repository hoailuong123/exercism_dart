import 'package:flutter/material.dart';

void main() {
  runApp(CardListTileApp());
}

class CardListTileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardListTileExample(),
    );
  }
}

class CardListTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card and ListTile Example')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Item 1'),
              subtitle: Text('Subtitle for Item 1'),
              onTap: () {
                // Handle item tap
              },
            ),
          ),
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Item 2'),
              subtitle: Text('Subtitle for Item 2'),
              onTap: () {
                // Handle item tap
              },
            ),
          ),
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Item 3'),
              subtitle: Text('Subtitle for Item 3'),
              onTap: () {
                // Handle item tap
              },
            ),
          ),
        ],
      ),
    );
  }
}
 
 