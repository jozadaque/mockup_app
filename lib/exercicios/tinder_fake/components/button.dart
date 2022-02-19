import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String label;
  final String urlImage;
  const ButtonComponent({Key? key, required this.label, required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pink),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.white)))),
        onPressed: () {},
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  urlImage,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                label.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }
}
