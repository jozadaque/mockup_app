import 'package:flutter/material.dart';

import 'home_page.dart';

class MyFloatButton extends StatelessWidget {
  const MyFloatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: HomePage(),
      ),
    );
  }
}
