import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String HintText;
  final bool pass;
  const Textfield({super.key, required this.HintText, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: HintText,
            ),
            obscureText: pass,
          ),
        ),
      ),
    );
  }
}
