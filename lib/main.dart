import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Center(child: Text('Lets Play')),
        ),
        body: SafeArea(
          child: Center(child: Text(nouns.first)),
        ),
      ),
    );
  }
}//sca
