import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Widget xyloBar(Color color, int note) {
  return FlatButton(
    color: color,
    onPressed: () {
      final player = AudioCache();
      player.play('note$note.wav');
    },
    child: Text(''),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              xyloBar(Colors.red, 1),
              xyloBar(Colors.orange, 2),
              xyloBar(Colors.yellow, 3),
              xyloBar(Colors.green, 4),
              xyloBar(Colors.brown, 5),
              xyloBar(Colors.blue, 6),
              xyloBar(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
