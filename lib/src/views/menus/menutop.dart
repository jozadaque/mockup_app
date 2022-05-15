import 'package:flutter/material.dart';

class MenuTop extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget image;
  const MenuTop(
      {Key? key, required this.title, this.subtitle = '', required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Logo(
                title: title,
                subtitle: subtitle,
                image: image,
              ),
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
  final String title;
  final String subtitle;
  final Widget image;
  const Logo(
      {Key? key, required this.title, this.subtitle = '', required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: image,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0, left: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        )
      ],
    );
  }
}
