import 'package:flutter/material.dart';
import 'package:mockup_app/menu_botton.dart';
import 'package:mockup_app/menutop.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Scaffold(
          bottomNavigationBar: const MyMenuBotton(),
          body: Column(
            children: const [
              MenuTop(),
            ],
          ),
        ),
      ),
    );
  }
}
