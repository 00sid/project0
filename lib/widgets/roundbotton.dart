import 'package:flutter/material.dart';

class RoundBotton extends StatelessWidget {
  final String bottonname;
  const RoundBotton({super.key, required this.bottonname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.red[400],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            bottonname,
            style: TextStyle(color: Colors.grey[200]),
          ),
        ),
      ),
    );
  }
}
