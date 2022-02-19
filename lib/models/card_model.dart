import 'package:flutter/material.dart';

class CardModel {
  final Image image;
  final Text bodyText;
  final String title;
  final int amountExercise;
  final void Function() onPressed;

  CardModel({
    required this.onPressed,
    required this.image,
    required this.bodyText,
    required this.title,
    required this.amountExercise,
  });

  static cards(BuildContext context) {
    return [
      CardModel(
        image: Image.asset('assets/images/Icon awesome-running.png'),
        bodyText: const Text(
            'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos '),
        title: 'Animações',
        amountExercise: 4,
        onPressed: () {
          Navigator.of(context).pushNamed('/animation');
        },
      ),
      CardModel(
        image: Image.asset('assets/images/Icon awesome-glasses.png'),
        bodyText: const Text(
            'Aplicação da técnica de leitura de mockup, contendo 2 exercícios'),
        title: 'Leitura de Mockup',
        amountExercise: 2,
        onPressed: () {},
      ),
      CardModel(
        image: Image.asset('assets/images/Icon material-toys.png'),
        bodyText: const Text('Ambiente destinado a testes e estudos em geral'),
        title: 'Playgroung',
        amountExercise: 3,
        onPressed: () {},
      ),
      CardModel(
        image: Image.asset('assets/images/Icon awesome-running.png'),
        bodyText: const Text(
            'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos '),
        title: 'Animações',
        amountExercise: 4,
        onPressed: () {
          Navigator.of(context).pushNamed('/animation');
        },
      ),
      CardModel(
        image: Image.asset('assets/images/Icon awesome-glasses.png'),
        bodyText: const Text(
            'Aplicação da técnica de leitura de mockup, contendo 2 exercícios'),
        title: 'Leitura de Mockup',
        amountExercise: 2,
        onPressed: () {},
      ),
    ];
  }
}
