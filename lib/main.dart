import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: DicePage()),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice=1;
  var rightDice=1;
  void randomdice(){
    setState((){
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: TextButton(
                child: Image.asset('images/dice$leftDice.png'),
                onPressed: () {
                  randomdice();
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                child: Image.asset('images/dice$rightDice.png'),
                onPressed: () {
                  randomdice();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



