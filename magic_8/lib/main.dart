import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Magic8(),
  ));
}

class Magic8 extends StatefulWidget {
  @override
  Magic8_State createState() => Magic8_State();
}

class Magic8_State extends State<Magic8> {
  int number = 1;

  void changeValueImage() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          "Ask Me Anything",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: FlatButton(
          child: Image.asset("images/ball$number.png"),
          onPressed: changeValueImage,
        ),
      ),
    );
  }
}
