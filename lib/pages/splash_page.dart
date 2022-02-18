import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  /// Home screen responsible for presenting an image and logo that represents
  /// the Flutterando Masterclass.
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    nextPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/masterclass_logo.png'),
      ),
    );
  }
}

nextPage(BuildContext context) async {
  await Future.delayed(
    const Duration(seconds: 5),
    () => Navigator.of(context).pushReplacementNamed('/homepage'),
  );
}
