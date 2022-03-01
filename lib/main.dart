import 'package:flutter/material.dart';
import 'package:mockup_app/src/exercicios/animations/floating_button_explicit_animation/main.dart';
import 'package:mockup_app/src/exercicios/gerador_de_cpf/main.dart';
import 'package:mockup_app/src/exercicios/animations/my_expansion_tile/my_expansiontile_main.dart';
import 'package:mockup_app/src/exercicios/animations/my_extension_tile_with_animation/my_expansion_tile_main.dart';
import 'package:mockup_app/src/exercicios/screens/my_money_app/my_money_app.dart';
import 'package:mockup_app/src/exercicios/animations/myfloatbutton/flooating_button_main.dart';
import 'package:mockup_app/src/exercicios/screens/tinder_fake/my_tinder_fake.dart';
import 'package:mockup_app/src/views/pages/about_dev.dart';
import 'package:mockup_app/src/views/pages/animations_page.dart';
import 'package:mockup_app/src/views/pages/home_page.dart';
import 'package:mockup_app/src/views/pages/reading_mockup.dart';
import 'package:mockup_app/src/views/pages/splash_page.dart';

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
        ///Pages View
        '/': (context) => const SplashPage(),
        '/homepage': (context) => const HomePage(),
        '/animation': (context) => const AnimationsPage(),
        '/aboutdev': (context) => const AboutDev(),

        ///Exercices
        '/readingmockup': (context) => const ReadMockupPage(),
        '/tinderfake': (context) => const TinderFake(),
        '/mymoneyapp': (context) => const MyMoneyApp(),
        '/myfloatbuttonanimated': (context) => const MyFloatButtonAnimated(),
        '/myfloatbutton': (context) => const MyFloatButton(),
        '/myexpansiontileanimated': (context) =>
            const MyExtensionTileAnimated(),
        '/myexpansiontile': (context) =>
            const MyImplicetAnimatedExpansionTile(),
        '/geradordecpf': (context) => const GeradorDeCpf()
      },
    );
  }
}
