import 'package:flutter/material.dart';

import 'Bmi_Calculator.dart';



void main()
{
  runApp(const MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmi_Calculator(),
    );
  }
}