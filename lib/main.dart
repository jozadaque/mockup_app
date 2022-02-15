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
          backgroundColor: const Color.fromARGB(255, 18, 21, 23),
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 18, 21, 23),
          ),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: Color.fromARGB(255, 237, 244, 248)),
            headline6: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Color.fromARGB(255, 237, 244, 248)),
            headline5: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 12,
                color: Color.fromARGB(255, 237, 244, 248)),
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/homepage': (context) => const SplashPage(),
      },
    );
  }
}
