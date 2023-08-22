import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAnimatedWidget(),
    );
  }
}

class MyAnimatedWidget extends StatefulWidget {
  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedWidget Example')),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: MyAnimatedContainer(
            animation: _animation,
          ),
        ),
      ),
    );
  }
}

class MyAnimatedContainer extends StatefulWidget {
  final Animation<double> animation;

  const MyAnimatedContainer({Key? key, required this.animation})
      : super(key: key);

  @override
  _MyAnimatedContainerState createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue.withOpacity(widget.animation.value),
      child: Center(
        child: Text(
          'Opacity: ${widget.animation.value.toStringAsFixed(2)}',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
