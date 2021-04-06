import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Dice"),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = 1;

  int dice2 = 1;
  changeValues() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: changeValues,
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: changeValues,
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice$dice2.png'),
            ),
          )
        ],
      ),
    );
  }
}
