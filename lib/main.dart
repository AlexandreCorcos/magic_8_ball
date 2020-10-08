import 'package:flutter/material.dart';
//import 'ball.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Teste.corText,
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}

class Teste {
  static var testeColor = Colors.pink;
  static var corText = Colors.green;
  static var iconText = Icons.airplanemode_active;
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  String ballText = 'the number is ?';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Teste.corText,
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50.0),
            Icon(
              Teste.iconText,
              size: 50,
            ),
            Text(
              ballText,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 50.0),
            FlatButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  ballText = 'The number is $ballNumber ';

                  if (ballNumber == 1) {
                    (Teste.corText = Colors.blue);
                    (Teste.iconText = Icons.phone);
                  } else if (ballNumber == 2) {
                    (Teste.corText = Colors.yellow);
                    (Teste.iconText = Icons.email);
                  } else if (ballNumber == 3) {
                    (Teste.corText = Colors.red);
                    (Teste.iconText = Icons.settings_ethernet);
                  } else if (ballNumber == 4) {
                    (Teste.corText = Colors.teal);
                    (Teste.iconText = Icons.live_tv);
                  } else if (ballNumber == 5) {
                    (Teste.corText = Colors.purple);
                    (Teste.iconText = Icons.room_service);
                  }
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ],
        ),
      ),
    );
  }
}
