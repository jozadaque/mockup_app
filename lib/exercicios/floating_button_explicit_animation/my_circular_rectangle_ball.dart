import 'package:flutter/material.dart';
import 'package:mockup_app/exercicios/floating_button_explicit_animation/my_gesture_detect_widget.dart';

class MyAnimatedRectagleCircule extends StatefulWidget {
  /// Create a Widget class that is responsible for generating the animations on the screen.
  /// Alignment, dimension and embroidery properties are controlled in this widget.

  const MyAnimatedRectagleCircule({Key? key}) : super(key: key);

  @override
  _MyBallState createState() => _MyBallState();
}

class _MyBallState extends State<MyAnimatedRectagleCircule>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<AlignmentGeometry> aligncircularRectangleBall;
  late Animation<BorderRadiusGeometry> circularRectangleBallTransform;
  late Animation<double> resizeWidget;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    aligncircularRectangleBall = Tween<AlignmentGeometry>(
      begin: Alignment.bottomRight,
      end: Alignment.topCenter,
    ).animate(controller);

    circularRectangleBallTransform = Tween<BorderRadiusGeometry>(
      begin: BorderRadius.circular(50),
      end: BorderRadius.circular(0),
    ).animate(controller);

    resizeWidget = Tween<double>(
      begin: 100,
      end: 200,
    ).animate(controller);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return MyGestureDetectorWidget(
              controller: controller,
              aligncircularRectangleBall: aligncircularRectangleBall,
              resizeWidget: resizeWidget,
              circularRectangleBallTransform: circularRectangleBallTransform,
            );
          }),
    );
  }
}
