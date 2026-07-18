import 'package:flutter/material.dart';
import 'package:oxgame/const.dart';
import 'package:oxgame/oxScreen/oxScreen.dart';

void main() {
  runApp(const Ox_game());
}

// ignore: camel_case_types
class Ox_game extends StatelessWidget {
  const Ox_game({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kkcolor),

      home: OxScreen(),
    );
  }
}
