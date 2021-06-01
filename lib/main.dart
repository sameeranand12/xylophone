import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
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
          child: Center(
            child: Container(
              color: Colors.teal,
              child: TextButton(onPressed: (){
                final player = AudioCache();
                player.play('note1.wav');
              },
                child: Text('Press me'),
              ),
            ),
          ),

        ),
      ),
    );
  }
}
