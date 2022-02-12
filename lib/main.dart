import 'package:flutter/material.dart';
import 'package:mockup_app/splash_page.dart';

void main() {
  runApp(const MockupApp());
}

class MockupApp extends StatelessWidget {
  const MockupApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
      },
    );
  }
}
