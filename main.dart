import 'package:flutter/material.dart';
import 'package:adv_basics/gradient_container.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const Color.fromARGB(255, 50, 20, 102) , 
              const Color.fromARGB(255, 53, 10, 127) )
    ),
  ),
  );
}

  
