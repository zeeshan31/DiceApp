import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return DicePageState();
  }
}

class DicePageState extends State<DicePage> {
  int leftdice = 1, rightdice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$leftdice.png'),
                onPressed: () {
                  setState(() {
                    leftdice = Random().nextInt(6) + 1;
                    rightdice = Random().nextInt(6) + 1;
                  });
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$rightdice.png'),
                onPressed: () {
                  setState(() {
                    rightdice = Random().nextInt(6) + 1;
                    leftdice = Random().nextInt(6) + 1;
                  });
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
