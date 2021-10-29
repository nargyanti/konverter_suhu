import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String title;
  final double temperature;

  Result(this.title, this.temperature);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          temperature.toStringAsFixed(2),
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
