import 'package:flutter/material.dart';
import 'package:mockup_app/components/cards_widgets.dart';
import 'package:mockup_app/models/card_model.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CardModel> cards = CardModel.cards;
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 198,
      child: ListView(
        children: cards
            .map(
              (e) => CardsWidget(
                  image: e.image,
                  title: e.title,
                  amountExercise: e.amountExercise,
                  bodyText: e.bodyText),
            )
            .toList(),
      ),
    );
  }
}
