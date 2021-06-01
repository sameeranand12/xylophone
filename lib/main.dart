import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
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
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.yellow,
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text('Press me'),
                ),
              ),
              Container(
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text('Press me'),
                ),
              ),
              Container(
                color: Colors.deepOrangeAccent,
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text('Press me'),
                ),
              ),
              Container(
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text('Press me'),
                ),
              ),
              Container(
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text('Press me'),
                ),
              ),
              Container(
                color: Colors.pinkAccent,
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text('Press me'),
                ),
              ),
              Container(
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text('Press me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
