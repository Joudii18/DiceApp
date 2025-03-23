import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  
  @override
  State <DiceRoller> createState() { // <> Inform dart what type of widget will we return 
   return _DiceRollerState();
  }
}

class _DiceRollerState extends State <DiceRoller>{ // This is a convienent name when naming the class of the additional one to main one , _ mean private class

 //var activeDiceImage = "assests/images/dice-2.png" ;
 final randomizer = Random();
 var currentDiceRoll = 2;

 void rollDice() {
  setState(() { // THE MAGIC
      currentDiceRoll = randomizer.nextInt(6) + 1;
      });    
  }

    @override
    Widget build(context) {
    return Column(

            mainAxisSize: MainAxisSize.min,
            children: [
            Image.asset(
              "assets/images/dice-$currentDiceRoll.png", // IMAGE WIDGET
              width: 200, 
            ),
            SizedBox(  // SIZE WIDGET
              height: 20,),
            TextButton(
              onPressed: rollDice,  // TEXTBUTTON WIDGET 
              style: TextButton.styleFrom(
                // padding: EdgeInsets.only(top: 20),
                foregroundColor: Colors.white , 
                textStyle: TextStyle(
                fontSize: 28,
              ), 
              ),
              child: Text("Roll Dice!"))
             ],
            );
  }
}