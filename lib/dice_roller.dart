import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentValue = 2;

  void rollDice() {
    setState(() {
      currentValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Win at 6',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/images/dice-images/dice-$currentValue.png',
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'click here 👇',
          style: TextStyle(
              fontSize: 15,
              backgroundColor: Color.fromARGB(255, 1, 2, 4),
              color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                side: const BorderSide(
                    width: 2, color: Color.fromARGB(255, 142, 142, 25)),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll The Dice')),
        const SizedBox(
          height: 200,
        ),
        const Text(
          'Made by Mr. R',
          style: TextStyle(
            fontSize: 17,
            color: Color.fromARGB(255, 253, 253, 253),
          ),
        ),
      ],
    );
  }
}
