import 'package:flutter/material.dart';
import 'package:flutter_game/ball.dart';
import 'package:flutter_game/brid.dart';
import 'package:flutter_game/coverscreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Stack(children: [
            const CoverScreen(),
            MyBrird(
              x: 0,
              y: -0.9,
            ),
            MyBrird(
              x: 0,
              y: 0.9,
            ),
            MyBall(x: 0.0, y: -0.2)
          ]),
        ),
      ),
    );
  }
}
