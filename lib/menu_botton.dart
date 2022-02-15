import 'package:flutter/material.dart';

class MyMenuBotton extends StatelessWidget {
  const MyMenuBotton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.black,
      child: Row(
        children: const  [
          Expanded(child: ItensmenuBotton()),
          Line(),
          Expanded(child: ItensmenuBotton()),
          Line(),
          Expanded(child: ItensmenuBotton()),
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.white12,
            width: 2,
          )
        )
      ),
    );
  }
}

class ItensmenuBotton extends StatelessWidget {
  const ItensmenuBotton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.access_alarm, color: Colors.white,),
        Text('Label', style: TextStyle(color: Colors.white),),
      ],
    );
  }
}
