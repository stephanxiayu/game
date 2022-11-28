import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_game/ball.dart';
import 'package:flutter_game/brid.dart';
import 'package:flutter_game/coverscreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum direction { UP, DOWN }

class _MyHomePageState extends State<MyHomePage> {
  double ballX = 0.2;
  double ballY = 0.9;
  var ballDirection = direction.DOWN;

  bool gameHasStarted = false;
  void startGame() {
    setState(() {
      gameHasStarted = true;
      Timer.periodic(const Duration(milliseconds: 1), (timer) {
        setState(() {
          ballY += 0.01;
        });
      });
    });
  }

  void updateDirection() {
    setState(() {
      if (ballY >= 0.9) {
        ballDirection = direction.DOWN;
      } else if (ballY <= -0.9) {
        ballDirection = direction.UP;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: startGame,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(children: [
          CoverScreen(gameHasstarted: gameHasStarted),
          MyBrird(
            x: 0,
            y: -0.9,
          ),
          MyBrird(
            x: 0.0,
            y: 0.9,
          ),
          MyBall(x: ballX, y: ballY)
        ]),
      ),
    );
  }
}
