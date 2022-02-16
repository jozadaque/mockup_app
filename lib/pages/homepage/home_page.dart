import 'package:flutter/material.dart';
import 'package:mockup_app/menus/menu_botton.dart';
import 'package:mockup_app/menus/menutop.dart';
import 'package:mockup_app/pages/homepage/body_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomNavigationBar: const MyMenuBotton(),
        body: Column(
          children: const [
            MenuTop(
              namePage: 'Repositorios',
            ),
            BodyPage()
          ],
        ),
      ),
    );
  }
}
