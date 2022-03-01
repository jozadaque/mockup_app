import 'package:flutter/material.dart';
import 'package:mockup_app/src/views/components/line_exercises.dart';
import 'package:mockup_app/src/views/menus/menu_botton.dart';
import 'package:mockup_app/src/views/menus/menutop.dart';

class ReadMockupPage extends StatelessWidget {
  const ReadMockupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const MyMenuBotton(),
        body: Column(
          children: [
            MenuTop(
              title: 'Leitura de Mockup',
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
                      count: 1, route: '/tinderfake', title: 'Tinder Fake'),
                  LineExercises(
                      count: 2, route: '/mymoneyapp', title: 'App MyMoneyApp'),
                  LineExercises(
                      count: 3, route: '/geradordecpf', title: 'Gerador de CPF')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
