import 'package:flutter/material.dart';
import 'package:oxgame/const.dart';

class Players extends StatelessWidget {
  const Players({super.key});
  final String player1 = "0";
  final String player2 = "0";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text("Player1", style: Styles.textStyle20),
            Text("0", style: Styles.textStyle30),
          ],
        ),
        Column(
          children: [
            Text("Player2", style: Styles.textStyle20),
            Text("0", style: Styles.textStyle30),
          ],
        ),
      ],
    );
  }
}
