import 'package:flutter/material.dart';
import 'package:oxgame/auth/widget/CustomTextFiled.dart';
import 'package:oxgame/auth/widget/customButton.dart';
import 'package:oxgame/oxScreen/oxScreen.dart';

class Auth extends StatelessWidget {
  Auth({super.key});
  final TextEditingController player1Controller = TextEditingController();
  final TextEditingController player2Controller = TextEditingController();
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formState,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFiled(
                controller: player1Controller,
                hintText: "player1",
                label: 'player1',
              ),
              CustomTextFiled(
                controller: player2Controller,

                hintText: "player2",
                label: 'player2',
              ),
              CustomButton(
                onPressed: () {
                  if (formState.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OxScreen(
                            player1: player1Controller.text.isEmpty
                                ? "player1"
                                : player1Controller.text,
                            player2: player2Controller.text.isEmpty
                                ? "player2"
                                : player2Controller.text,
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
