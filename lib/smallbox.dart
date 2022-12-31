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
      child: ElevatedButton(onPressed: onPressed, style: ElevatedButton.styleFrom(
          primary: Colors.white,), child: _widgetforSmallBox(),),
    );
  }
  Widget _widgetforSmallBox(){
    Widget widget;
    switch (boxstate){
      case BoxState.EMPTY: {
        widget = Container();
        }
      break;

      case BoxState.CROSS: {
          widget = Image.asset("assets/images/x.png");
        }
      break;

      case BoxState.CIRCLE: {
          widget = Image.asset("assets/images/o.png");
        }
      break;
    }

    return widget;
  }

}
