import 'package:flutter/material.dart';
import 'package:mockup_app/controler/button_controller.dart';

class MyMenuBotton extends StatelessWidget {
  const MyMenuBotton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 65,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(left: 43.0, right: 43, top: 10),
            child: AnimatedBuilder(
                animation: ButtonController.instance,
                builder: (context, snapshot) {
                  return AnimatedAlign(
                    duration: const Duration(milliseconds: 200),
                    alignment: ButtonController.instance.position,
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white12,
                      ),
                    ),
                  );
                }),
          ),
        ),
        Container(
          height: 65,
          color: Colors.transparent,
          child: Row(
            children: [
              Expanded(
                  child: ItensmenuBotton(
                label: 'Atividades',
                urlImage: 'assets/images/Icon feather-target.png',
                onPressed: () {
                  ButtonController.instance
                      .changeButtonPosition(Alignment.topLeft);
                  Navigator.of(context).pushReplacementNamed('/homepage');
                },
              )),
              const Line(),
              Expanded(
                  child: ItensmenuBotton(
                label: 'Repositorios',
                urlImage: 'assets/images/Icon awesome-github.png',
                onPressed: () {
                  ButtonController.instance
                      .changeButtonPosition(Alignment.topCenter);
                },
              )),
              const Line(),
              Expanded(
                  child: ItensmenuBotton(
                label: 'Sobre o Dev',
                urlImage: 'assets/images/Icon person.png',
                onPressed: () {
                  ButtonController.instance
                      .changeButtonPosition(Alignment.topRight);
                  Navigator.of(context).pushReplacementNamed('/aboutdev');
                },
              )),
            ],
          ),
        )
      ],
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
  final void Function() onPressed;
  const ItensmenuBotton({
    Key? key,
    required this.urlImage,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: onPressed, icon: Image.asset(urlImage)),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
