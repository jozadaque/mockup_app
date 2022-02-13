import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget child;
  const MyScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Atividades',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Fluttando Masterclass',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
        leading: Image.asset('assets/images/logo.png'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode)),
          )
        ],
      ),
      body: child,
    );
  }
}
