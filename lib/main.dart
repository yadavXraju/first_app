import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(Color.fromARGB(248, 3, 31, 113),
              Color.fromARGB(255, 223, 15, 15))),
    ),
  );
}
