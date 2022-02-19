import 'package:flutter/material.dart';

class CardsApresentationsWidget extends StatelessWidget {
  const CardsApresentationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Container(
        height: 285,
        decoration: BoxDecoration(
          color: const Color(0XFF172026),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'Jozadaque Silva Sousa',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 10, right: 10, bottom: 15),
              child: Text(
                'Duis rhoncus dui venenatis consequat porttitor. Etiam aliquet congue consequat. In posuere, nunc sit amet laoreet blandit, urna sapien.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: SizedBox(
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Icon ionic-logo-whatsapp.png'),
                    Image.asset('assets/images/Icon awesome-github-alt.png'),
                    Image.asset('assets/images/Icon awesome-instagram.png'),
                    Image.asset('assets/images/Icon awesome-facebook-f.png'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
