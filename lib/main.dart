import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

// Defining a custom function to get the run up and started
void main() {
  // Executing ("calling") a Function
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149),
        ),
      ),
    ),
  );
}
