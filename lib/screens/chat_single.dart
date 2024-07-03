import 'package:flutter/material.dart';
import 'package:chat_app/models/user_detail.dart';
import 'package:chat_app/screens/left.dart';
import 'package:chat_app/screens/right.dart';
class ChatSingle extends StatelessWidget {
  final UserDetail userDetail;
  const ChatSingle(this.userDetail, {super.key}) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userDetail.name),
      ),
      body:
      Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.lightBlueAccent[50],
                child: ListView.builder(
                  itemCount: userDetail.userChats.length,
                  itemBuilder: (context, index) {
                    if (userDetail.userChats[index].isSentByMe) {
                      return Right(idx: userDetail.userChats[index]);
                    } else {
                      return Left(idx: userDetail.userChats[index]);
                    }
                  },
                ),
              ),
            ),
            Container(
              height: 70,
              color: Colors.lightBlueAccent[50],
              child: const ListTile(
                title: Text('Write a message...'),
                leading: Icon(Icons.add),
                trailing: Icon(Icons.send),
              )
            ),
          ],
        ),
      )
    );
  }
}
