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
              Expanded(
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {

                      playSound(1);
                    },

                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orangeAccent,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playSound(2);
                    },

                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },

                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.lightGreen,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },

                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.lightBlueAccent,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },

                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepPurple,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playSound(6);
                    },

                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple[200],
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playSound(7);
                    },

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
