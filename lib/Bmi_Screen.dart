import 'package:flutter/material.dart';
class Bmi_Screen extends StatelessWidget{
  bool isMale=true;
  int age=0;
  int result=0;
  Bmi_Screen(
      {super.key, 
        required this.isMale,
        required this.result,
        required this.age,
      });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title:const Text('BMI RESULT',
          style:TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
      body: Center(
        child:   Column(

            mainAxisAlignment: MainAxisAlignment.center,



            children:

            [

              Text('GENDER :${isMale ?'MALe':'FEMALE'}',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('RESULT :$result',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('AGE :$age',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),



            ]),
      ),

    );
  }
}