import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double temperature;

  Result(this.temperature);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,      
      child: Text(
        temperature.toStringAsFixed(2),
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
