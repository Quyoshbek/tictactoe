import 'package:flutter/material.dart';
import 'package:tic_tac_toe/choice.dart';
import 'smallbox.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _boardState = List.filled(9, BoxState.EMPTY);
  var _currentTurn = BoxState.CROSS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            _boardBox(),
            Image.asset("assets/images/board.png"),
          ],
        ),
      ),
    );
  }

  Widget _boardBox() {
    return Builder(builder: (context) {
      final boardBoxSize = MediaQuery.of(context).size.width;
      final smallBoxSize = boardBoxSize / 3;
      return Container(
        width: boardBoxSize,
        height: boardBoxSize,
        child: Column(
          children: chunk(_boardState, 3).asMap().entries.map((entry) {
            final chunkIndex = entry.key;
            final boxchunk = entry.value;
            return Row(
              children: boxchunk.asMap().entries.map((innerEntry) {
                final innerIndex = innerEntry.key;
                final taleState = innerEntry.value;
                final taleIndex = (chunkIndex * 3) + innerIndex;
                return SmallBox(
                    boxsize: smallBoxSize,
                    onPressed: () => _updateIndex(taleIndex),
                    boxstate: taleState);
              }).toList(),
            );
          }).toList(),
        ),
      );
    });
  }

  void _updateIndex(int selectedIndex) {
    if (_boardState[selectedIndex] != BoxState.EMPTY) {
      setState(() {
        _boardState[selectedIndex] = _currentTurn;
        _currentTurn == BoxState.CROSS ? BoxState.CIRCLE : BoxState.CROSS;
      });
    }
  }
}
