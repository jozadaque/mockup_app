import 'package:flutter/material.dart';

import 'components/text_body_component.dart';
import 'components/text_button.dart';

class TextApp extends StatefulWidget {
  const TextApp({Key? key}) : super(key: key);

  @override
  _TextAppState createState() => _TextAppState();
}

class _TextAppState extends State<TextApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const TextBodyComponent(
            text: 'By tapping Create Account or Sign In, you agree to'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TextButtonComponent(text: 'Terms.'),
            TextBodyComponent(text: 'Learn how we process your data in our'),
            TextButtonComponent(text: 'Privacy')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TextButtonComponent(text: 'Policy'),
            TextBodyComponent(text: 'Cooking'),
            TextButtonComponent(text: 'Policy'),
          ],
        )
      ],
    );
  }
}
