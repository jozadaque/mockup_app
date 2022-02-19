import 'package:flutter/material.dart';
import 'package:mockup_app/exercicios/tinder_fake/text_app.dart';

import 'access_button.dart';
import 'components/text_trouble_access.dart';

class TinderFake extends StatelessWidget {
  const TinderFake({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            backgroundColor: Colors.pink,
            elevation: 0,
            child: const Icon(Icons.arrow_back_ios_new),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniStartTop,
          backgroundColor: Colors.pink,
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Image.asset('assets/images/logo_tinder.png', width: 200),
                const SizedBox(height: 60),
                const TextApp(),
                const SizedBox(height: 40),
                const AccessButton(),
                const SizedBox(height: 40),
                const TextTroubleSign(label: 'Troble Signing In?'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
