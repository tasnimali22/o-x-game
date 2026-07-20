import 'package:flutter/material.dart';
import 'package:oxgame/auth/widget/CustomTextFiled.dart';
import 'package:oxgame/auth/widget/customButton.dart';

class Auth extends StatelessWidget {
  Auth({super.key});

  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formState,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextFiled(hintText: "player1"),
            const CustomTextFiled(hintText: "player2"),
            CustomButton(onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
