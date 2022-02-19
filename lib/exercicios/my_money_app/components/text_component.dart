import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextDecoration? decoration;

  const TextComponent({
    Key? key,
    required this.text,
    this.fontSize = 24,
    this.color = Colors.white,
    this.decoration = TextDecoration.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.w600,
          decoration: decoration),
    );
  }
}
