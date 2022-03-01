import 'package:flutter/material.dart';

class TextTroubleSign extends StatelessWidget {
 final String label;
  const TextTroubleSign({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child:  Text(label, style: const TextStyle(
        color: Colors.white
      ),),
    );
  }
}
