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
  String _newValue = "Kelvin";
  double _result = 0;

  var listItem = ["Kelvin", "Reamur", "Fahrenheit"];

  void convertTemperature() {
    setState(() {
      _inputUser = double.parse(inputController.text);

      if (_newValue == 'Kelvin') {
        _result = _inputUser + 273;
      } else if (_newValue == 'Reamur') {
        _result = 4 / 5 * _inputUser;
      } else if (_newValue == 'Fahrenheit') {
        _result = 9 / 5 * _inputUser + 32;
      }
    });    
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
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: (changeValue) {
                  setState(() {
                    _newValue = changeValue.toString();
                    _inputUser = double.parse(inputController.text);
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Result(_result),                  
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
