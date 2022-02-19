import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCircular = true;
  final time = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio do Botão Flutuante'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isCircular = !isCircular;
            });
          },
          child: AnimatedAlign(
            duration: Duration(seconds: time),
            alignment: isCircular ? Alignment.bottomRight : Alignment.topCenter,
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: isCircular
                    ? BorderRadius.circular(40)
                    : BorderRadius.circular(0),
              ),
              duration: Duration(seconds: time),
              width: isCircular ? 80 : 180,
              height: 80,
            ),
          ),
        ),
      ),
    );
  }
}
