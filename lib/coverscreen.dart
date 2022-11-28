import 'package:flutter/material.dart';

class CoverScreen extends StatelessWidget {
  CoverScreen({Key? key, required this.gameHasstarted}) : super(key: key);
  bool? gameHasstarted;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0, -0.2),
      child: gameHasstarted! ? const Text("") : const Text("Spielen"),
    );
  }
}
