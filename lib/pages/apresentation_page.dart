import 'package:flutter/material.dart';
import 'package:mockup_app/components/cards_homes.dart';
import 'package:mockup_app/models/card_model.dart';

class ApresentationPage extends StatelessWidget {
  const ApresentationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CardModel> cards = CardModel.cards(context);
    return ListView(
      children: cards
          .map(
            (e) => CardsHomeWidget(
                onPressed: e.onPressed,
                image: e.image,
                title: e.title,
                amountExercise: e.amountExercise,
                bodyText: e.bodyText),
          )
          .toList(),
    );
  }
}
