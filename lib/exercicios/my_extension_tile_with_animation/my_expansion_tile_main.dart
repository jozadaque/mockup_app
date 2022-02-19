import 'package:flutter/material.dart';
import 'package:mockup_app/exercicios/my_expansion_tile/my_expansion_tile.dart';

class MyExtensionTileAnimated extends StatelessWidget {
  const MyExtensionTileAnimated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My ExpansionTile')),
        body: ListView(
          children: [
            for (int i = 0; i < 50; i++)
              MyExpansionTileImplicet(
                count: i,
              ),
          ],
        ),
      ),
    );
  }
}
