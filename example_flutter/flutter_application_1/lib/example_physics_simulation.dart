import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

void main() {
  runApp(PhysicsSimulationExample());
}

class PhysicsSimulationExample extends StatefulWidget {
  @override
  _PhysicsSimulationExampleState createState() =>
      _PhysicsSimulationExampleState();
}

class _PhysicsSimulationExampleState extends State<PhysicsSimulationExample>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late SpringSimulation _simulation;
  double _position = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );

    _simulation = SpringSimulation(
      SpringDescription.withDampingRatio(
        mass: 1,
        stiffness: 100,
        ratio: 0.5,
      ),
      _position, // Starting position
      300.0, // End position
      0, // Initial velocity
    );

    _controller.animateWith(_simulation);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Physics Simulation Example')),
        body: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              _position = _simulation.x(_controller.value);
              return Transform.translate(
                offset: Offset(0, _position),
                child: FlutterLogo(size: 100),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


