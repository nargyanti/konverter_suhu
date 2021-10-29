import 'package:flutter/material.dart';

import './input.dart';
import './convert.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController inputController = new TextEditingController();

  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;

  void convertTemperature() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      _kelvin = _inputUser + 273;
      _reamur = 4 / 5 * _inputUser;
      _fahrenheit = 9 / 5 * _inputUser + 32;
    });
    print('Done');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(inputController),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Result("Kelvin", _kelvin),
                  Result("Reamur", _reamur),
                  Result("Fahrenheit", _fahrenheit),
                ],
              ),
              Container(child: Convert(convertTemperature)),
            ],
          ),
        ),
      ),
    );
  }
}
