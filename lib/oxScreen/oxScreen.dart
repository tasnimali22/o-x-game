import 'package:flutter/material.dart';
import 'package:oxgame/oxScreen/widget/customGraidView.dart';
import 'package:oxgame/oxScreen/widget/player.dart';

class OxScreen extends StatelessWidget {
  const OxScreen({super.key, required this.player1, required this.player2});
  final String player1;
  final String player2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "O x Game",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Players(player1: '', player2: ''),
          SizedBox(height: 50),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomGraidView(),
            ),
          ),
        ],
      ),
    );
  }
}
