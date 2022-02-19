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
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0XFF172026),
            ),
            child: Column(
              children: const [
                LineCardHabilitiesCompetencies(
                    label: 'Dart/Flutter', percent: 0.7),
                LineCardHabilitiesCompetencies(label: 'React', percent: 0.5),
                LineCardHabilitiesCompetencies(
                    label: 'JavaScript', percent: 0.76),
                LineCardHabilitiesCompetencies(label: 'HTML', percent: 0.9),
                LineCardHabilitiesCompetencies(label: 'css', percent: 0.7),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LineCardHabilitiesCompetencies extends StatelessWidget {
  final String label;
  final double percent;
  const LineCardHabilitiesCompetencies({
    Key? key,
    required this.label,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Stack(
            children: [
              Container(
                width: 210,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                width: percent * 210,
                height: 10,
                decoration: BoxDecoration(
                  color: const Color(0xFF055AA3),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
