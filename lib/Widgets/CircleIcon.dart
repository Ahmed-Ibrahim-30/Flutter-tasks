import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final _icon;
  const CircleIcon(this._icon,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
     radius: 20,
     backgroundColor: Colors.grey,
     child: IconButton(
         icon: Icon(_icon,color: Colors.white,size:24),
       onPressed: (){},
     ),
    );
  }
}
