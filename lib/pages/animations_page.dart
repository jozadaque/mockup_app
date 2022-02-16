import 'package:flutter/material.dart';
import 'package:mockup_app/components/lines_exercises.dart';
import 'package:mockup_app/menus/menu_botton.dart';
import 'package:mockup_app/menus/menutop.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomNavigationBar: const MyMenuBotton(),
        body: Column(
          children: [
            MenuTop(
              title: 'Animações',
              subtitle: 'Flutterando Masterclass',
              image: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                      'assets/images/Icon ionic-ios-arrow-back.png')),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 198,
              child: ListView(
                  children: List.generate(
                      4,
                      (index) => LineExercises(
                            count: index + 1,
                          ))),
            ),
          ],
        ),
      ),
    );
  }
}
