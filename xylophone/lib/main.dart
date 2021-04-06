import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  //variable to play sounds
  AudioCache audioCache = AudioCache();
  // final Map<String, Color> listSounds = {
  //   'note1.wav': Colors.red,
  //   'note2.wav': Colors.orange,
  //   'note3.wav': Colors.yellow,
  //   'note4.wav': Colors.green,
  //   'note5.wav': Colors.teal,
  //   'note6.wav': Colors.blue,
  //   'note7.wav': Colors.purple
  // };

  Expanded xylo(int note, Color colorButton) {
    return Expanded(
      child: FlatButton(
        color: colorButton,
        onPressed: () {
          audioCache.play('note$note.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            xylo(1, Colors.red),
            xylo(2, Colors.orange),
            xylo(3, Colors.yellow),
            xylo(4, Colors.green),
            xylo(5, Colors.teal),
            xylo(6, Colors.blue),
            xylo(7, Colors.purple),
          ],
        ),
      ),
      // )
    );
  }
}
