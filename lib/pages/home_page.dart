import 'package:flutter/material.dart';
import 'package:mockup_app/components/cards_widgets.dart';
import 'package:mockup_app/menus/menu_botton.dart';
import 'package:mockup_app/menus/menutop.dart';

import '../models/card_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CardModel> cards = CardModel.cards(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        bottomNavigationBar: const MyMenuBotton(),
        body: Column(
          children: [
            MenuTop(
              title: 'Repositórios',
              subtitle: 'Flutterando Masterclass',
              image: Image.asset('assets/images/logo.png'),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 198,
              child: ListView(
                children: cards
                    .map(
                      (e) => CardsWidget(
                          onPressed: e.onPressed,
                          image: e.image,
                          title: e.title,
                          amountExercise: e.amountExercise,
                          bodyText: e.bodyText),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
