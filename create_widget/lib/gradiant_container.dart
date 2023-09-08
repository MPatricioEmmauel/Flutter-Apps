import 'package:flutter/material.dart';

var startAlignment = Alignment.bottomLeft;
var endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.color1, this.color2, {super.key});
  const GradiantContainer.blue({super.key}):
    color1 = Colors.green,
    color2 = Colors.lightGreen;

  final Color color1;
  final Color color2; 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      )
    );
  }
}