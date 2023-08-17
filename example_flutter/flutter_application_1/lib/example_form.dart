import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyFormExample(),
  ));
}

class MyFormExample extends StatefulWidget {
  const MyFormExample({Key? key}) : super(key: key);

  @override
  _MyFormExampleState createState() => _MyFormExampleState();
}

class _MyFormExampleState extends State<MyFormExample> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Sucessed!')));
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
