import 'package:flutter/material.dart';
import 'package:oxgame/const.dart';

class Players extends StatelessWidget {
  const Players({super.key, required this.player1, required this.player2});
  final String player1;
  final String player2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(player1, style: Styles.textStyle20),
            Text("0", style: Styles.textStyle30),
          ],
        ),
        Column(
          children: [
            Text(player2, style: Styles.textStyle20),
            Text("0", style: Styles.textStyle30),
          ],
        ),
      ],
    );
  }
}
