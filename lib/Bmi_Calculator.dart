import 'package:flutter/material.dart';
import 'dart:math';

import 'Bmi_Screen.dart';
class Bmi_Calculator extends StatefulWidget {
  @override
  State<Bmi_Calculator> createState() => _Bmi_CalculatorState();
}

class _Bmi_CalculatorState extends State<Bmi_Calculator> {
  bool isMale = true;
  double height=100;
  int age=10;
  int weight=40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('BMI CALCULATOR',style:TextStyle(color:Colors.white,))),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(7.7),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.blue : Colors.grey[400],
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.male,
                                size: 70,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Male',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.grey[400] : Colors.blue,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 70,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Female',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(child: Container

            (

              width:double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:7.7),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Center(
                        child: Text('HEIGHT',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color:Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children:
                          [
                            Text('${height?.round()}',
                              style:TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color:Colors.black,
                              ),
                            ),

                            Text('CM',
                              style:TextStyle(
                                fontSize: 10,
                                color:Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Slider(
                        activeColor:Colors.blue ,
                        value:height,
                        min: 80,
                        max:220,
                        onChanged: ( value){
                          setState(() {
                            height =value;
                            print(value.round);
                          });

                        },
                      ),
                    ],
                  ),
                ),
              ))),

          Expanded(child: Container

            (

              width:double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(7.7),
                child: Container(
                  child: Row(
                    children:
                    [
                      Expanded(
                        child: Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                        ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,

                            children:
                            [
                              Text('AGE',
                                style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color:Colors.black,
                                ),
                              ),
                              Text('${age}',
                                style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color:Colors.black,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age--;

                                    });
                                    print(age);
                                  },
                                    child:Icon(Icons.remove),
                                    mini:true,
                                  ),
                                  SizedBox(width:10),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age++;

                                    });
                                    print(age);
                                  },
                                    child:Icon(Icons.add),
                                    mini:true,
                                  ),
                                ],)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width:10),
                      Expanded(
                        child: Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                        ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,

                            children:
                            [
                              Text('Weight',
                                style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                  color:Colors.black,
                                ),
                              ),
                              Text('${weight}',
                                style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color:Colors.black,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weight--;

                                    });
                                    print(weight);
                                  },
                                    child:Icon(Icons.remove),
                                    mini:true,
                                  ),
                                  SizedBox(width:10),
                                  FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weight++;

                                    });
                                    print(weight);
                                  },
                                    child:Icon(Icons.add),
                                    mini:true,
                                  ),
                                ],)
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ))),



          Container(
            width:double.infinity,
            child: MaterialButton(

              color: Colors.black,
              height: 50,
              onPressed: () {
                double Bmi =weight/pow(height/100,2);
                print (Bmi.round);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(contxt) => Bmi_Screen(
                      age:age,
                      isMale:isMale,
                      Bmi: Bmi.round(),
                    ),
                  ),
                );
              },
              child: Center(
                child: Text('Calculate',
                  style:TextStyle(fontSize:30,
                    color:Colors.white,
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}