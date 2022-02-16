import 'package:flutter/material.dart';
import 'package:mockup_app/pages/home_page.dart';
import 'package:mockup_app/pages/splash_page.dart';

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
        backgroundColor: const Color.fromARGB(1, 18, 21, 23),
        //brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 18, 21, 23),
        ),
        textTheme: const TextTheme(
          button: TextStyle(
              fontFamily: 'Poppins', fontSize: 12, color: Color(0xFFEDF4F8)),
          headline1: TextStyle(
              fontFamily: 'Poppins', fontSize: 20, color: Color(0xFFEDF4F8)),
          headline2: TextStyle(
              fontFamily: 'Poppins', fontSize: 16, color: Color(0xFFEDF4F8)),
          headline6: TextStyle(
              fontFamily: 'Poppins', fontSize: 12, color: Color(0xFFEDF4F8)),
          subtitle1: TextStyle(
              fontFamily: 'Montserrat', fontSize: 12, color: Color(0xFF51565A)),
          subtitle2: TextStyle(
              fontFamily: 'Montserrat', fontSize: 12, color: Color(0xFFEDF4F8)),
          bodyText2: TextStyle(
              fontFamily: 'Montserrat', fontSize: 14, color: Color(0xFF51565A)),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/homepage': (context) => const SplashPage(),
      },
    );
  }
}
