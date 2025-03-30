import  'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-1.png';
  
  void rollDice(){
    setState(() {
      var intValue = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$intValue.png';
    });
    
  }
  @override
  Widget build(context){
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
              activeDiceImage,
              width: 200,
              ),
              SizedBox(height: 20,),
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 28.0,
                  )
                ),
                child: Text('Roll')),
            ],
          );
  }
}