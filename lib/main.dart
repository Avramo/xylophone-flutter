import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int noteNumber}) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color keyColor, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: keyColor,
        onPressed: () {
          playSound(noteNumber: noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'XYLOPHONE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
              ),
              buildKey(keyColor: Colors.red, noteNumber: 1),
              buildKey(keyColor: Colors.orange, noteNumber: 2),
              buildKey(keyColor: Colors.yellow, noteNumber: 3),
              buildKey(keyColor: Colors.green, noteNumber: 4),
              buildKey(keyColor: Colors.blue, noteNumber: 5),
              buildKey(keyColor: Colors.indigo, noteNumber: 6),
              buildKey(keyColor: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
