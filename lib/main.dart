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

  void convertTemperature() {
    setState(() {
      _kelvin = double.parse(inputController.text) + 273;
      _reamur = 4 / 5 * double.parse(inputController.text);
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
            children: [
              Input(inputController),
              Row(
                children: [
                  Column(                    
                    children: [                                            
                      Text(                        
                        'Suhu dalam Kelvin',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        _kelvin.toStringAsFixed(2),
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Suhu dalam Reamur',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        _reamur.toStringAsFixed(2),
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ],
              ),
              Convert(convertTemperature),
            ],
          ),
        ),
      ),
    );
  }
}

