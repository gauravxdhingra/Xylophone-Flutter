import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Widget xyloBar(Color color, int note) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$note.wav');
        player.disableLog();
      },
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
