
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ResultScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var color=Colors.indigo.withOpacity(0.8);
  var maleFemalePressed=Colors.teal.withOpacity(0.6);
  double height=0.0,weight=0.0; int age=0;
  int state=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.4),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI Calculator"),
        backgroundColor: color,
      ),
      body: Column(
        children: [
          Expanded(
              child:Row(
                children:  [
                  humanState(icon: Icons.male, humanState: "Male"),
                  humanState(icon: Icons.female, humanState: "Female"),
                ],
              ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text("Height",style: TextStyle(color: Colors.grey,fontSize: 30),),
                    )),
                    Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${height.toInt()}",style: const TextStyle(color: Colors.black,fontSize: 36,fontWeight: FontWeight.bold)),
                        const Text("cm",style: TextStyle(height: 3,fontSize: 20),)
                      ],
                    ),),
                    Expanded(
                      flex: 2,
                      child: Slider(
                          value: height,
                          onChanged: (value){
                            setState(() {
                              height=value;
                            });
                          },
                        min: 0.0,
                        max: 300,
                        activeColor: Colors.white,
                        inactiveColor: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:Row(
              children:  [
                calculate(name: "Age",hero1:"first1",hero2:"second1"),
                calculate(name: "Weight",hero1:"first2",hero2:"second2"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)
                ),
              child: InkWell(
                onTap: (){
                  double result = weight/pow((height/100), 2);
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_){
                      return ResultScreen(gender:state==1?"Male":"Female",result :result.round(),age:age);
                    })
                  );
                },
                child: const Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget humanState({required IconData icon,required String humanState}){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              color: state==1 && humanState=="Male"?maleFemalePressed:
              state==2 && humanState=="Female"?maleFemalePressed:color,
              borderRadius: BorderRadius.circular(12)
          ),
          child: InkWell(
            onTap:(){
              setState(() {
                if(humanState=="Male") {state=1;}
                else {state=2;}
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Icon(icon,size: 80,color: Colors.white,),
                )),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(humanState,style: const TextStyle(color:Colors.grey,fontSize: 30),),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget calculate({required String name,required String hero1,required String hero2}){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(child: SizedBox()),
              Expanded(
                flex: 2,
                  child: Text(name,style: const TextStyle(color:Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),)),
              Expanded(
                flex: 2,
                  child: Text(name=="Age"?"${age.toInt()}":"${weight.toInt()}",style: const TextStyle(color:Colors.grey,fontSize: 35,fontWeight: FontWeight.bold),)),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(child: FloatingActionButton(
                      heroTag: hero1,
                      onPressed: (){
                        setState(() {
                          name=="Age" && age>0?age--:name=="Weight"&& weight>0?weight--:weight;
                        });
                      },
                      mini: true,
                      child: const Icon(Icons.remove,size: 26,color: Colors.white,),
                    )),
                    Expanded(child: FloatingActionButton(
                      heroTag: hero2,
                      onPressed: (){
                        setState(() {
                          name=="Age"?age++:name=="Weight"?weight++:weight;
                        });
                      },
                      mini: true,
                      child: const Icon(Icons.add,size: 26,color: Colors.white),
                    )),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
