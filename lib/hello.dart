import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});
  @override
  Widget build(context){
    return Center(
      child: DiceRoller(),
    );
  }
}