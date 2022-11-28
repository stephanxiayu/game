import 'package:flutter/material.dart';

class MyBall extends StatelessWidget {
  double x;
  double y;
  MyBall({Key? key, required this.x, required this.y}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      alignment: Alignment(
        x,
        y,
      ),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
    );
  }
}
