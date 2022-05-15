import 'package:flutter/material.dart';

class LineExercises extends StatelessWidget {
  final String route;
  final int count;
  final String title;
  const LineExercises({
    Key? key,
    required this.count,
    required this.route,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(route),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xFF172026),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Text('$count'),
                ),
                Text(title, style: Theme.of(context).textTheme.headline2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
