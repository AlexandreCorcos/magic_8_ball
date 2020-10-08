import 'dart:math';
import 'package:flutter/material.dart';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  String ballText = 'the number is ???';
  String corText = 'green';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 50.0),
          Text(
            ballText,
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(height: 50.0),
          FlatButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                ballText = 'The number is $ballNumber';
              });
            },
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ],
      ),
    );
  }
}
