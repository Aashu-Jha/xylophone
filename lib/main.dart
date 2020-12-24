import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text("Jaadduu", 
                      style: TextStyle(color: Colors.white,
                      backgroundColor: Colors.black,
                      fontSize: 40),
                      ),
                    ],
                  ),
              ),
              Expanded(
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildButton(Colors.red, 1),
                    buildButton(Colors.orange, 2),
                    buildButton(Colors.yellow, 3),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildButton(Colors.lightGreen, 4),
                    buildButton(Colors.green, 5),
                    buildButton(Colors.blue, 6),
                  ],
                ),
              ),
              Expanded(
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    buildButton(Colors.red, 7),
                    buildButton(Colors.orange, 7),
                    buildButton(Colors.purple, 7),
                  ],
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}

void playSound(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Expanded buildButton(Color buttonColor, int soundNumber){
  return Expanded(
      child: FlatButton(
      color: buttonColor,
      onPressed: () {
      playSound(soundNumber);
    }, ),
  );
}



