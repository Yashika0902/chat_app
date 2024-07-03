import 'package:chat_app/models/chats.dart';
import 'package:flutter/material.dart';
class Right extends StatelessWidget {
  final Chats idx;
  const Right({super.key, required this.idx}) ;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
          width: 200,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            children: [SizedBox(
                width: 100,
                child: Column(
                    children: [Container(decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                      child: Text(idx.message, style: const TextStyle(fontSize: 20),),
                    ),
                      Text(idx.message_time, style: const TextStyle(fontSize: 12),),]
                )
            ),
              CircleAvatar(
                backgroundImage:  NetworkImage(idx.user_image),
                radius: 15,
              ),

            ],
          )


      ),//parent container
    );

  }
}
