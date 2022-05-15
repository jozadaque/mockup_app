import 'package:flutter/material.dart';

class CardsHomeWidget extends StatelessWidget {
  final void Function() onPressed;
  final Image image;
  final String title;
  final int amountExercise;
  final Text bodyText;

  const CardsHomeWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.amountExercise,
    required this.bodyText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5, top: 10),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xff172026),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            _HeadCard(
                image: image, title: title, amountExercise: amountExercise),
            BodyCard(bodyText: bodyText),
            BottomCard(onPressed: onPressed),
          ],
        ),
      ),
    );
  }
}

class _HeadCard extends StatelessWidget {
  final Image image;
  final String title;
  final int amountExercise;
  const _HeadCard({
    Key? key,
    required this.image,
    required this.title,
    required this.amountExercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: image,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headline2,
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'Exercicios:',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Text(
                '$amountExercise',
                style: const TextStyle(
                    color: Colors.white, fontFamily: 'Poppins', fontSize: 10),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BodyCard extends StatelessWidget {
  final Text bodyText;
  const BodyCard({
    Key? key,
    required this.bodyText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 15),
      child: bodyText,
    );
  }
}

class BottomCard extends StatelessWidget {
  final void Function() onPressed;
  const BottomCard({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/Icon awesome-github.png'),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text('Acessar código fonte',
                    style: Theme.of(context).textTheme.subtitle2),
              ),
            ],
          ),
          SizedBox(
            width: 120,
            child: ElevatedButton(
              onPressed: onPressed,
              child: const Text('Ver Mais'),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
          ),
        ],
      ),
    );
  }
}
