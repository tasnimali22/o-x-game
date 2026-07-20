import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    this.onchanged,
    super.key,
    required this.hintText,
    required this.label,
    required this.controller,
  });
  final String hintText;
  final String label;
  final Function(String)? onchanged;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (dats) {
        if (dats!.isEmpty) {
          return 'this filed is empty';
        }
      },
      controller: controller,
      onChanged: onchanged,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
