import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = ['Apple', 'Banana', 'Cherry'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Using Keys Example')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return MyListItem(
            key: ValueKey(items[index]),
            title: items[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            items.add('New Fruit');
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  final String title;

  const MyListItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
    );
  }
}
