import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            centerTitle: true,
            title: Text('Magic 8 Ball'),
          ),
          body: BlackBall(),
        ),
      ),
    );

class BlackBall extends StatefulWidget {
  @override
  _BlackBallState createState() => _BlackBallState();
}

class _BlackBallState extends State<BlackBall> {
  int ballNumber = 1;

  void shakeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Center(child: Image.asset('images/ball$ballNumber.png')),
      onPressed: () {
        shakeBall();
      },
    );
  }
}
