import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text(
              "Ask Me Anything",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({
    Key key,
  }) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.blue[200],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
      onTap: () {
        ballNumber = Random().nextInt(5) + 1;
        print(ballNumber);
        setState(() {});
      },
    );
  }
}
