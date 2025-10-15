import "package:flutter/material.dart";
import "dart:math";

final randomizer = Random();

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});

  @override
  State<diceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<diceRoller> {
  var diceRoll = 1;
  void rollDice() {
    setState(() {
      diceRoll =
          randomizer.nextInt(7) + 1; //generates a random value between 1 to 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/vk-$diceRoll.png", width: 400, height: 500),
        SizedBox(height: 10),
        TextButton(
          onPressed: rollDice,
          child: Text(
            "GENERATE",
            style: TextStyle(fontSize: 30, color: Colors.yellow),
          ),
        ),
      ],
    );
  }
}
