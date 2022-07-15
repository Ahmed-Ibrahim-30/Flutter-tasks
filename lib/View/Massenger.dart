import 'package:flutter/material.dart';
import 'package:testflutter/Widgets/CircleImage.dart';
import 'package:testflutter/Model/friend.dart';
import '../Model/chatsArray.dart';
import '../Widgets/CircleIcon.dart';

class Messenger extends StatelessWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 17,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleImage(Friend(image: "images/1.jpg"),radius: 25,),
            Container(
              margin: const EdgeInsetsDirectional.only(start: 10),
              child: const Text(
                "Chats",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
        actions: const[
          CircleIcon(Icons.camera_alt_outlined),
          SizedBox(width: 17,),
          CircleIcon(Icons.mode_edit),
          SizedBox(width: 14,),
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(start: 14),
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.white60,),
                      hintText: "Search",
                      border: InputBorder.none,
                    ),
                  )
              ),//search
              const SizedBox(height: 4,),
              Container(
                height: 130,
                child:ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: allActiveFriends.length,
                  itemBuilder:(contex,index)=>allActiveFriends[index],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: allChats.length,
                  itemBuilder:(context, index) => allChats[index]
              ),




            ],
          ),
        ),
      ),
    );
  }
}
