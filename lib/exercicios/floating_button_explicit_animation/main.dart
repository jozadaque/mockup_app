import 'package:flutter/material.dart';
import 'package:mockup_app/exercicios/floating_button_explicit_animation/my_circular_rectangle_ball.dart';

class MyFloatButtonAnimated extends StatelessWidget {
  const MyFloatButtonAnimated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Floating Button with Explicit Animation')),
        body: const MyAnimatedRectagleCircule(),
      ),
    );
  }
}
