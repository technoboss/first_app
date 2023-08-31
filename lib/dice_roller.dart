import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceroll = 2;
  // Defining a function
  void rollDice() {
    setState(() {
      currentDiceroll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      // or StyledText(textstr),
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceroll.png',
          width: 120,
        ),
        //const SizedBox(height: 20), // Adding blank space
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 22,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
