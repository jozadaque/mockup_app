import 'package:flutter/material.dart';
import 'package:mockup_app/exercicios/floating_button_explicit_animation/floating_button.dart';

class MyGestureDetectorWidget extends StatelessWidget {
  ///  This widget is responsible for interacting with the user.
  ///  It listens when the user taps the screen to run animation.
  const MyGestureDetectorWidget({
    Key? key,
    required this.controller,
    required this.aligncircularRectangleBall,
    required this.resizeWidget,
    required this.circularRectangleBallTransform,
  }) : super(key: key);

  final AnimationController controller;
  final Animation<AlignmentGeometry> aligncircularRectangleBall;
  final Animation<double> resizeWidget;
  final Animation<BorderRadiusGeometry> circularRectangleBallTransform;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.value == 0 ? controller.forward() : controller.reverse();
      },
      child: MyFloatingButtonAnimationWidget(
        alignBall: aligncircularRectangleBall,
        resizeWidget: resizeWidget,
        circularRectangleBallTransform: circularRectangleBallTransform,
      ),
    );
  }
}
