import 'package:flutter/material.dart';
import 'package:mockup_app/home_page.dart';
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
      theme: ThemeData(
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
          )),
      initialRoute: '/homepage',
      routes: {
        '/': (context) => const SplashPage(),
        '/homepage': (context) => const HomePage(),
      },
    );
  }
}
