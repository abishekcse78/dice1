import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;

  var rightDice = 1;

  void changeLeftDice() {
    setState(
      () {
        leftDice = Random().nextInt(6) + 1;
      },
    );
  }

  void changeRightDice() {
    setState(
      () {
        rightDice = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$leftDice.png',
              ),
              onPressed: () {
                changeLeftDice();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$rightDice.png',
              ),
              onPressed: () {
                changeRightDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
