import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget({Key? key}) : super(key: key);

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
          children: const [HeadCard(), BodyCard(), BottomCard()],
        ),
      ),
    );
  }
}

class HeadCard extends StatelessWidget {
  const HeadCard({
    Key? key,
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
                child: Image.asset('assets/images/Icon awesome-running.png'),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Animações',
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
              const Text(
                '4',
                style: TextStyle(
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
  const BodyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 15),
      child: Text(
          'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos '),
    );
  }
}

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key? key,
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
              onPressed: () {},
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
