import 'package:flutter/material.dart';

import 'Bmi_Calculator.dart';
import 'Bmi_Screen.dart';



void main()
{
  runApp(MyApp());
}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{
  // constructor
  // build

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bmi_Calculator(),
    );
  }
}