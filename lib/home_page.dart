import 'package:flutter/material.dart';

import 'my_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MyScaffold(
        child: Center(),
      ),
    );
  }
}
