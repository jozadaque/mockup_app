import 'package:flutter/material.dart';

class MyMenuBotton extends StatelessWidget {
  const MyMenuBotton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: Colors.transparent,
      child: Row(
        children: const [
          Expanded(
              child: ItensmenuBotton(
            label: 'Atividades',
            urlImage: 'assets/images/Icon feather-target.png',
          )),
          Line(),
          Expanded(
              child: ItensmenuBotton(
            label: 'Repositorios',
            urlImage: 'assets/images/Icon awesome-github.png',
          )),
          Line(),
          Expanded(
              child: ItensmenuBotton(
            label: 'Sobre o Dev',
            urlImage: 'assets/images/Icon person.png',
          )),
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
          border: Border(
              left: BorderSide(
        color: Colors.white12,
        width: 2,
      ))),
    );
  }
}

class ItensmenuBotton extends StatelessWidget {
  final String urlImage;
  final String label;
  const ItensmenuBotton({
    Key? key,
    required this.urlImage,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Image.asset(urlImage)),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
