import 'package:flutter/material.dart';

class HabilitesCompetenciesWidget extends StatelessWidget {
  const HabilitesCompetenciesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Habilidades e Competências',
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFF172026),
            ),
          ),
        ],
      ),
    );
  }
}
