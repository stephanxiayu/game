import 'package:flutter/material.dart';

class MyBall extends StatelessWidget {
  double? x;
  double? y;
  MyBall({Key? key, this.x, this.y}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      alignment: Alignment(
        x!,
        y!,
      ),
    );
  }
}
