import 'package:first_project/xo_game/xo_button.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatefulWidget {
  static const String routeName = 'gameborad';

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<String> boardText = ['', '', '', '', '', '', '', '', ''];
  int player1score = 0;

  int player2score = 0;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as GameArgs;
    return Scaffold(
      appBar: AppBar(title: Text('XO Game')),
      body: Column(children: [
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${args.playerName1} (X)',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Text('Score : $player1score',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${args.playerName2} (O)',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Text('Score : $player2score',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        )),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XoButton(
                  text: boardText[0],
                  index: 0,
                  onButtonClickCallBack: onButtonClick),
              XoButton(
                  text: boardText[1],
                  index: 1,
                  onButtonClickCallBack: onButtonClick),
              XoButton(
                  text: boardText[2],
                  index: 2,
                  onButtonClickCallBack: onButtonClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XoButton(
                  text: boardText[3],
                  index: 3,
                  onButtonClickCallBack: onButtonClick),
              XoButton(
                  text: boardText[4],
                  index: 4,
                  onButtonClickCallBack: onButtonClick),
              XoButton(
                  text: boardText[5],
                  index: 5,
                  onButtonClickCallBack: onButtonClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XoButton(
                  text: boardText[6],
                  index: 6,
                  onButtonClickCallBack: onButtonClick),
              XoButton(
                  text: boardText[7],
                  index: 7,
                  onButtonClickCallBack: onButtonClick),
              XoButton(
                  text: boardText[8],
                  index: 8,
                  onButtonClickCallBack: onButtonClick),
            ],
          ),
        ),
      ]),
    );
  }

  int counter = 0;

  onButtonClick(int index) {
    if (boardText[index].isNotEmpty) {
      return;
    }
    if (counter % 2 == 0) {
      boardText[index] = 'x';
    } else {
      boardText[index] = 'O';
    }
    if (cehckWinner('X') == true) {
      player1score += 5;
      emptyBoard();
    }
    if (cehckWinner('O') == true) {
      player2score += 5;
      emptyBoard();
    } else if (counter == 9) {
      emptyBoard();
    }
    counter++;
    setState(() {});
  }

  // 012
  // 345
  // 678
  bool cehckWinner(String symbol) {
    for (int i = 0; i < 7; i += 3) {
      if (boardText[i] == symbol &&
          boardText[i + 1] == symbol &&
          boardText[i + 2] == symbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (boardText[i] == symbol &&
          boardText[i + 3] == symbol &&
          boardText[i + 6] == symbol) {
        return true;
      }
    }
    if (boardText[0] == symbol &&
        boardText[4] == symbol &&
        boardText[8] == symbol) {
      return true;
    }
    if (boardText[2] == symbol &&
        boardText[4] == symbol &&
        boardText[6] == symbol) {
      return true;
    }
    return false;
  }

  void emptyBoard() {
    boardText = ['', '', '', '', '', '', '', '', ''];
    counter = 0;
    setState(() {});
  }
}

class GameArgs {
  String playerName1;

  String playerName2;

  GameArgs({required this.playerName1, required this.playerName2});
}
