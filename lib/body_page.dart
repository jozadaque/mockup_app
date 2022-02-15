import 'package:flutter/material.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 510,
      child: ListView(
        children: List.generate(
          50,
          (index) => Padding(
            padding: const EdgeInsets.only(
                left: 50.0, right: 50.0, bottom: 10, top: 10),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
