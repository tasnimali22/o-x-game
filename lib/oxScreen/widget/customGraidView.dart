import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:oxgame/oxScreen/widget/customContainer.dart';

class CustomGraidView extends StatefulWidget {
  const CustomGraidView({super.key});

  @override
  State<CustomGraidView> createState() => _CustomGraidViewState();
}

final AudioPlayer audio = AudioPlayer();

class _CustomGraidViewState extends State<CustomGraidView> {
  List<String> game = List.filled(9, "");

  String player = "x";
  String winner = "";
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
      ),
      itemBuilder: (BuildContext context, int index) {
        return CustomContainer(
          index: index,
          onTap: () {
            turnPlay(index);
          },
          listgame: game,
        );
      },
    );
  }

  Future<void> sound({required String filename}) async {
    await audio.play(AssetSource(filename));
  }

  void turnPlay(int index) {
    if (game[index] == "" && winner == "") {
      setState(() {
        game[index] = player;
        sound(filename: "mixkit-cartoon-toy-whistle-616.wav");
        String? reslet = checkWinner();
        if (reslet != null && reslet != "") {
          winner = reslet;
          sound(filename: "mixkit-small-group-cheer-and-applause-518.wav");
          customShowDialog(title: '"congratulation 🇪🇬💃🎉🎉"');
        } else if (game.isEmpty && winner == "") {
          sound(filename: "mixkit-arcade-retro-game-over-213.wav");
          // ignore: void_checks
          return customShowDialog(title: "Tie😎");
        } else {
          currentPlayer();
        }
      });
    }
  }

  dynamic customShowDialog({required String title}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(),
          title: Text(title),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  reset(context);
                });
              },
              child: Text("!تلعب مرة تانية"),
            ),
          ],
        );
      },
    );
  }

  void reset(BuildContext context) {
    game = List.filled(9, "");
    player = "o";
    winner = "";
    Navigator.pop(context);
  }

  void currentPlayer() {
    player = player == "x" ? "o" : "x";
  }

  String? checkWinner() {
    if (game[0] != "" && game[0] == game[1] && game[1] == game[2]) {
      return game[0];
    }
    if (game[5] != "" && game[5] == game[4] && game[4] == game[3]) {
      return game[5];
    }
    if (game[8] != "" && game[8] == game[7] && game[7] == game[6]) {
      return game[8];
    }
    if (game[2] != "" && game[2] == game[5] && game[5] == game[8]) {
      return game[2];
    }
    if (game[1] != "" && game[1] == game[4] && game[4] == game[7]) {
      return game[1];
    }
    if (game[0] != "" && game[0] == game[3] && game[3] == game[6]) {
      return game[0];
    }
    if (game[2] != "" && game[2] == game[4] && game[4] == game[6]) {
      return game[2];
    }
    if (game[0] != "" && game[0] == game[4] && game[4] == game[8]) {
      return game[0];
    }
    return null;
  }
}
