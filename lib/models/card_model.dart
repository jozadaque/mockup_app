import 'package:flutter/material.dart';

class CardModel {
  final Image image;
  final Text bodyText;
  final String title;
  final int amountExercise;

  CardModel({
    required this.image,
    required this.bodyText,
    required this.title,
    required this.amountExercise,
  });

  static get cards {
    return [
      CardModel(
        image: Image.asset('assets/images/Icon awesome-running.png'),
        bodyText: const Text(
            'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos '),
        title: 'Animações',
        amountExercise: 4,
      ),
      CardModel(
        image: Image.asset('assets/images/Icon awesome-glasses.png'),
        bodyText: const Text(
            'Aplicação da técnica de leitura de mockup, contendo 2 exercícios'),
        title: 'Leitura de Mockup',
        amountExercise: 2,
      ),
      CardModel(
        image: Image.asset('assets/images/Icon material-toys.png'),
        bodyText: const Text('Ambiente destinado a testes e estudos em geral'),
        title: 'Playgroung',
        amountExercise: 3,
      ),
      CardModel(
        image: Image.asset('assets/images/Icon awesome-running.png'),
        bodyText: const Text(
            'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos '),
        title: 'Animações',
        amountExercise: 4,
      ),
      CardModel(
        image: Image.asset('assets/images/Icon awesome-glasses.png'),
        bodyText: const Text(
            'Aplicação da técnica de leitura de mockup, contendo 2 exercícios'),
        title: 'Leitura de Mockup',
        amountExercise: 2,
      ),
    ];
  }
}
