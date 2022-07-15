import 'package:flutter/material.dart';
import '../View/Massenger.dart';

import 'Massenger.dart';
class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();

  bool hidePassword=true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    child:Image.asset("images/login.JPG"),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(start: 15,top: 10),
                    child: IconButton(
                      icon:const Icon(Icons.arrow_back,size: 25,),
                      onPressed: (){},
                      color: Colors.red,
                    ),
                  ),

                ],
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(top: 10,start: 10,end: 10),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin:  const EdgeInsetsDirectional.only(top: 20,start: 10,end: 10),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.name,
                  obscureText: hidePassword,
                  decoration:  InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(fontSize: 17),
                    prefixIcon: const Icon(Icons.key),
                    suffixIcon: IconButton(
                      icon:Icon(
                          hidePassword?Icons.visibility_off:Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          hidePassword=!hidePassword;
                        });
                      },
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(end: 10,top: 7,),
                    child: TextButton(
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                      ),
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsetsDirectional.only(end: 20,start: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: MaterialButton(
                  highlightColor: Colors.red,
                  onPressed: (){
                    if(emailController.text!="" && passwordController.text!=""){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_){
                            return const Messenger();
                          })
                      );
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(top: 10),
                child: Row(
                  children: const [
                    Expanded(child: Divider(thickness: 1.5,)),
                    Text("OR",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                    Expanded(child: Divider(thickness: 1.5,)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(top: 10,start: 20,end: 20),
                child: Material(
                    type: MaterialType.transparency, //Makes it usable on any background color, thanks @IanSmith
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.cyan, width: 4.0),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[100],
                        shape: BoxShape.rectangle,
                      ),
                      width: double.infinity,
                      height: 60,
                      child: InkWell(
                        borderRadius:BorderRadius.circular(20),
                        onTap: (){
                          if(emailController.text!="" && passwordController.text!=""){
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_){
                                  return const Messenger();
                                })
                            );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 30,),
                            Image.asset("images/google.png",height: 29),
                            const SizedBox(width: 60,),
                            const Text(
                                "Login with Google",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey
                                )),

                          ],
                        )
                      ),
                    )
                ),
              ),
            ],
          )
        ),
      ),

    );
  }
}
