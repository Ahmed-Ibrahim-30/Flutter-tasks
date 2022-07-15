import 'package:flutter/material.dart';
import 'package:testflutter/Widgets/CircleImage.dart';

import '../Model/friend.dart';

class ChatWidget extends StatelessWidget {
  Friend friend;
  String date;
  String AM_BM;

  ChatWidget(this.friend, this.date, this.AM_BM, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleImage(friend),
        Expanded(
          child: Padding(
            padding: const EdgeInsetsDirectional.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  friend.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        friend.message,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child:  Icon(
                        Icons.timelapse,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text("$date $AM_BM", style: const TextStyle(color: Colors.white)),
                  ],
                ),



              ],
            ),
          ),
        )
      ],
    );
  }
}
