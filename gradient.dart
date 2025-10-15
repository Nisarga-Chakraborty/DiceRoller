import "package:flutter/material.dart";
import "diceRoller.dart";

class gradient extends StatelessWidget {
  const gradient(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: diceRoller(),
        ), //Calling the diceRoller constructor function here
      ),
    );
  }
}
