import 'package:first_project/xo_game/game_board.dart';
import 'package:flutter/material.dart';

class PlayerName extends StatelessWidget {
  static const String routeName = 'startUp';
  String player1Name = '';
  String player2Name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          TextFormField(
              decoration: InputDecoration(hintText: 'Player 1 Name'),
              onChanged: (text) {
                player1Name = text;
              }),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'Player 2 Name'),
            onChanged: (text) {
              player2Name = text;
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(GameBoard.routeName,
                    arguments: GameArgs(
                        playerName1: player1Name, playerName2: player2Name));
              },
              child: Text('Lets Play'))
        ]),
      ),
    );
  }
}