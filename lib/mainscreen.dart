import 'package:flutter/material.dart';
import 'smallbox.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            _boardBox(),
            Image.asset("assets/images/board2.png"),
            _boardBox(),
          ],
        ),
      ),
    );
  }
}
Widget _boardBox(){
  return Builder(builder: (context){
    final boardBoxSize= MediaQuery.of(context).size.width;
    final smallBoxSize = boardBoxSize/3;
    return Container(
      width: boardBoxSize,
      height: boardBoxSize,
      child: Column(
        children: [
          Row(
            children: [
              SmallBox(boxsize: smallBoxSize),
              SmallBox(boxsize: smallBoxSize),
              SmallBox(boxsize: smallBoxSize),
            ],
          ),
          Row(
            children: [
              SmallBox(boxsize: smallBoxSize),
              SmallBox(boxsize: smallBoxSize),
              SmallBox(boxsize: smallBoxSize),
            ],
          ),
          Row(
            children: [
              SmallBox(boxsize: smallBoxSize),
              SmallBox(boxsize: smallBoxSize),
              SmallBox(boxsize: smallBoxSize),
            ],
          ),
        ],
      ),
    );
  });
}
