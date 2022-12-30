import 'package:flutter/material.dart';
import 'package:tic_tac_toe/choice.dart';
class SmallBox extends StatelessWidget {
  final BoxState boxstate;
  final boxsize;
  final VoidCallback onPressed;
  SmallBox({Key? key, this.boxsize, required this.onPressed, required this.boxstate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: boxsize,
      height: boxsize,
      color: Colors.yellow,
      child: ElevatedButton(onPressed: onPressed, child: Image.asset("assets/images/x.png")),
    );
  }
}
