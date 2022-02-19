import 'package:flutter/material.dart';
import 'package:mockup_app/exercicios/floating_button_explicit_animation/main.dart';
import 'package:mockup_app/exercicios/my_expansion_tile/my_expansiontile_main.dart';
import 'package:mockup_app/exercicios/my_extension_tile_with_animation/my_expansion_tile_main.dart';
import 'package:mockup_app/exercicios/my_money_app/my_money_app.dart';
import 'package:mockup_app/exercicios/myfloatbutton/flooating_button_main.dart';
import 'package:mockup_app/exercicios/tinder_fake/my_tinder_fake.dart';
import 'package:mockup_app/pages/about_dev.dart';
import 'package:mockup_app/pages/animations_page.dart';
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
        scaffoldBackgroundColor: const Color(0xFF121517),
        textTheme: const TextTheme(
          caption: TextStyle(
              fontFamily: 'Poppins', fontSize: 14, color: Color(0xFFEDF4F8)),
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
        '/': (context) => const SplashPage(),
        '/homepage': (context) => const HomePage(),
        '/animation': (context) => const AnimationsPage(),
        '/aboutdev': (context) => const AboutDev(),
        '/tinderfake': (context) => const TinderFake(),
        '/mymoneyapp': (context) => const MyMoneyApp(),
        '/myfloatbuttonanimated': (context) => const MyFloatButtonAnimated(),
        '/myfloatbutton': (context) => const MyFloatButton(),
        '/myexpansiontileanimated': (context) =>
            const MyExtensionTileAnimated(),
        '/myexpansiontile': (context) =>
            const MyImplicetAnimatedExpansionTile(),
      },
    );
  }
}
