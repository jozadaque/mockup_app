import 'package:flutter/material.dart';

class MenuTop extends StatelessWidget {
  const MenuTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: const BoxDecoration(color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Logo(),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/Icon awesome-moon.png'),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String page = 'Atividades';
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset('assets/images/logo.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                page,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Fluttando Masterclass',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        )
      ],
    );
  }
}
