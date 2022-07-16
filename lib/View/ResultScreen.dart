import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final gender,result,age;
  var color=Colors.indigo.withOpacity(0.8);
  ResultScreen({this.gender,this.result,this.age,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.4),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: color,
        title: const Text("BMI Result",style: TextStyle(fontSize: 28,color: Colors.white),),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${gender}",style: TextStyle(fontSize: 28,color: Colors.red,fontWeight: FontWeight.bold),
            ),
            Text("Result : ${result}",style: TextStyle(fontSize: 28,color:Colors.red,fontWeight: FontWeight.bold),),
            Text("Age : ${age}",style: TextStyle(fontSize: 28,color: Colors.red,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
