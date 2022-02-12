import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Atividades'),
                Text('Fluttando Masterclass'),
              ],
            ),
          ),
          leading: Image.asset('assets/images/logo.png'),
          actions: const [Icon(Icons.dark_mode)],
        ),
        body: Container(),
      ),
    );
  }
}
