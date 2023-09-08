import 'package:flutter/material.dart';
import 'package:create_widget/styled_text.dart';
import 'dart:math';
import 'dart:async';

final randomnizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  int counter = 0;

  void rollDice(){
    currentDiceRoll = randomizer.nextInt(6)+1;
    setState((){});
  }

  void rollDiceEffect() async {
    Timer.periodic(const Duration(milliseconds: 80), (timer){
      counter++;
      setState((){
        currentDiceRoll = randomizer.nextInt(6)+1;
      });
      if(counter >= 10){
        timer.cancel();
        setState((){
          counter = 1;
        })
      }
    }),
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-$currentDiceRoll.png', width: 200,),
        TextButton(
          onPressed: rollDiceEffect, 
          style: TextButton.styleForm(
          padding: edgeInsets.all(10.0),
          foregroundColor: Colors.black,
          textStyle: const TextStyle(
            fontSize: 10,
          ),
        ),
        child: const StyledText('Gira el Dado')//Text('Gira el dado'),
        ),
      ]
    );
  }
}