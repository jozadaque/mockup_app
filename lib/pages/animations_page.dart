import 'package:flutter/material.dart';
import 'package:mockup_app/components/line_exercises.dart';
import 'package:mockup_app/menus/menu_botton.dart';
import 'package:mockup_app/menus/menutop.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const MyMenuBotton(),
        body: Column(
          children: [
            MenuTop(
              title: 'Animações',
              subtitle: 'Flutterando Masterclass',
              image: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Image.asset(
                      'assets/images/Icon ionic-ios-arrow-back.png')),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 198,
              child: ListView(
                children: const [
                  LineExercises(
                      count: 1,
                      route: '/myfloatbutton',
                      title: 'FloatButton - Animação Implicita'),
                  LineExercises(
                      count: 2,
                      route: '/myfloatbuttonanimated',
                      title: 'FloatButton - Animação exlicita'),
                  LineExercises(
                      count: 3,
                      route: '/myexpansiontile',
                      title: 'Expansion Tile - Animação Implicita'),
                  LineExercises(
                      count: 4,
                      route: '/myexpansiontileanimated',
                      title: 'Expansion Tile - Animação explicita'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
