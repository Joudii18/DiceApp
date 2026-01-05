import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAligment = Alignment.topLeft; // Variablessss like java
const endAligment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {  // Our class + This is a custom widget 
      const GradientContainer ( this.color1, this.color2, {super.key});

    /* const GradientContainer.purple({super.key})
     : color1: Colors.deepPurple,
       color2 = Colors.indigo; */ //     Another Alternative Constructor 

    final Color color1;
    final Color color2;
  
  @override
  Widget build(context) { // This built method will be exceuted for us by flutter
  return  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAligment,
              end: endAligment,
            ),
          ),
         child: Center( // I still don't understand the purpose of children 
          child: DiceRoller(),
         ),
      );
  }
  }
  