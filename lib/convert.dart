import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final VoidCallback convertHandler;

  Convert(this.convertHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: convertHandler,
        child: Text('Konversi suhu'),
      ),
    );
  }
}
