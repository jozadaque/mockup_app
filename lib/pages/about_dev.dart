import 'package:flutter/material.dart';
import 'package:mockup_app/components/cards_apresentation.dart';
import 'package:mockup_app/components/favorite_tecnologies.dart';
import 'package:mockup_app/components/habilities_compentencies.dart';

class AboutDev extends StatefulWidget {
  const AboutDev({Key? key}) : super(key: key);

  @override
  _AboutDevState createState() => _AboutDevState();
}

class _AboutDevState extends State<AboutDev> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: const [
          CardsApresentationsWidget(),
          FavoriteTecnologies(),
          HabilitesCompetenciesWidget(),
        ],
      ),
    ));
  }
}
