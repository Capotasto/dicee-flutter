import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(DicePage());
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void shuffleDice() {
    setState(() {
      leftDiceNumber = getRandomNumber();
      rightDiceNumber = getRandomNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset(
                    'images/dice$leftDiceNumber.png',
                  ),
                  onPressed: () {
                    shuffleDice();
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset(
                    'images/dice$rightDiceNumber.png',
                  ),
                  onPressed: () {
                    shuffleDice();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int getRandomNumber() {
  return new Random().nextInt(6) + 1; // 1 to 6
}
