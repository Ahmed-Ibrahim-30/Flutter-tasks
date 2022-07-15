import 'package:flutter/material.dart';

import '../Model/friend.dart';

class CircleImage extends StatelessWidget {
  bool addedColumn;
  Friend friend;
  double radius;
  CircleImage(this.friend,{Key? key, this.addedColumn=false,this.radius=35}) : super(key: key) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding:const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: 80,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: radius,
                  backgroundImage:AssetImage(friend.image),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: friend.active?Colors.green:Colors.transparent,
                  ),
                )
              ],
            ),
          ),
          addedColumn?Container(
            margin: const EdgeInsetsDirectional.only(top: 10,start: 10),
            child: Center(
              child: Text(
                friend.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ):Container(),
        ],
      ),
    );
  }
}
