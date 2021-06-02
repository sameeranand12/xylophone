import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //bool _isPlaying = false;
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  void pauseSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }
  Expanded keyNotes(Color colorName,  int noteNum){
    Expanded(
        child: Container(
        color: colorName,

        child: TextButton(
        onPressed: () {
      playSound(noteNum);
    },
    ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Center(child: Text('Lets Play')),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyNotes(Colors.red , 1),
              keyNotes(Colors.orange, 2),
              keyNotes(Colors.pink , 3),
              keyNotes(Colors.yellow , 4),
              keyNotes(Colors.lightGreen , 5),
              keyNotes(Colors.lightBlueAccent , 6),
              keyNotes(Colors.purpleAccent , 7),
            ],
          ),
        ),
      ),
    );
  }
}
