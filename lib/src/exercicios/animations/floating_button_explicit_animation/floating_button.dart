import 'package:flutter/material.dart';

class MyFloatingButtonAnimationWidget extends StatelessWidget {
  /// Este Widget é responsavel por desenhar o circulo ou retangulo na tela do usuário.
  const MyFloatingButtonAnimationWidget({
    Key? key,
    required this.alignBall,
    required this.resizeWidget,
    required this.circularRectangleBallTransform,
  }) : super(key: key);

  final Animation<AlignmentGeometry> alignBall;
  final Animation<double> resizeWidget;
  final Animation<BorderRadiusGeometry> circularRectangleBallTransform;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignBall.value,
      child: Container(
        width: resizeWidget.value,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: circularRectangleBallTransform.value,
        ),
      ),
    );
  }
}
