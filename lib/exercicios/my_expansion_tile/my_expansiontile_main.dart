import 'package:flutter/material.dart';
import 'package:mockup_app/exercicios/my_expansion_tile/my_expansion_tile.dart';

class MyImplicetAnimatedExpansionTile extends StatelessWidget {
  const MyImplicetAnimatedExpansionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My ExpansionTile',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('My ExpansionTile'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < 50; i++) MyExpansionTileImplicet(count: i),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
