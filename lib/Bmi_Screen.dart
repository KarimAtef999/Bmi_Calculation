import 'package:flutter/material.dart';
class Bmi_Screen extends StatelessWidget{
  bool isMale=true;
  int age=0;
  int Bmi=0;
  Bmi_Screen(
      {
        required this.isMale,
        required this.Bmi,
        required this.age,
      });

  String getBmiCategory() {
    if (Bmi < 18.5) {
      return 'Underweight';
    } else if (Bmi < 25) {
      return 'Normal weight';
    } else if (Bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black,
        title:Text('BMI RESULT',
          style:TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),

        ),
      ),
      body: Container(color: Colors.black,

        child:   Center(
          child:   Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [

                Divider(height: 10,
                  color: Colors.blue,
                  thickness: 7.5,
                  indent: 70,
                  endIndent: 70,
                ),


                Text(
                  'GENDER : ${isMale ? 'MALE' : 'FEMALE'}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.white,),
                ),
                Divider(height: 10,
                  color: Colors.blue,
                  thickness: 7.5,
                  indent: 70,
                  endIndent: 70,
                ),
                Text(
                  'BMI : $Bmi',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.white,),
                ),
                Divider(height: 10,
                  color: Colors.blue,
                  thickness: 7.5,
                  indent: 70,
                  endIndent: 70,
                ),
                Text(
                  'AGE : $age',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.white,),
                ),
                Divider(height: 10,
                  color: Colors.blue,
                  thickness: 7.5,
                  indent: 70,
                  endIndent: 70,
                ),
                Text(
                  'BMI CATEGORY : ${getBmiCategory()}',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.white,overflow: TextOverflow.ellipsis,),
                ),





              ]),

        ),
      ),

    );
  }
}