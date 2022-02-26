import 'package:flutter/material.dart';
import 'package:mockup_app/controler/button_controller.dart';
import 'package:mockup_app/menus/menu_botton.dart';
import 'package:mockup_app/menus/menutop.dart';
import 'package:mockup_app/pages/about_dev.dart';
import 'package:mockup_app/pages/apresentation_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = ButtonController.instance.controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: MenuTop(
                      title: 'Atividades',
                      subtitle: 'Subtitulo',
                      image: Image.asset('assets/images/logo.png'))),
              Expanded(
                flex: 8,
                child: PageView(
                  controller: controller,
                  children: const [
                    ApresentationPage(),
                    Center(child: Text('Page 1')),
                    AboutDev(),
                  ],
                ),
              ),
              const Expanded(
                flex: 1,
                child: MyMenuBotton(),
              ),
            ],
          )),
    ));
  }
}
