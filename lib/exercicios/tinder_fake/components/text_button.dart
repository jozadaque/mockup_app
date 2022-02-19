import 'package:flutter/material.dart';

class TextButtonComponent extends StatelessWidget {
  final String text;
  const TextButtonComponent({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: TextButton(
        autofocus: true,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          textStyle: MaterialStateProperty.all(
              const TextStyle(decoration: TextDecoration.underline)),
          minimumSize: MaterialStateProperty.all(const Size(0, 0)),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
