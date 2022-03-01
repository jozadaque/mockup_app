import 'package:flutter/material.dart';
import 'home_page.dart';

class MyMoneyApp extends StatelessWidget {
  const MyMoneyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
