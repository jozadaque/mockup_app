import 'package:flutter/material.dart';

class TextBodyComponent extends StatelessWidget {
  final String text;
  const TextBodyComponent({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
