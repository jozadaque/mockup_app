import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  /// Home screen responsible for presenting an image and logo that represents
  /// the Flutterando Masterclass.
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/images/masterclass_logo.png'),
      ),
    );
  }
}
