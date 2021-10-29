import 'package:flutter/material.dart';

class History extends StatelessWidget {
  List<String> listViewItem = [];

  History(this.listViewItem);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listViewItem.map((String value) {
        return Container(
          margin: EdgeInsets.all(10),
          child: Text(
            value,
            style: TextStyle(fontSize: 15),
          ),
        );
      }).toList(),
    );
  }
}
