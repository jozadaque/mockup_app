import 'package:flutter/material.dart';
import 'package:mockup_app/components/cards_widgets.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 198,
      child: ListView(children: const [
        CardsWidget(),
      ]),
    );
  }
}
