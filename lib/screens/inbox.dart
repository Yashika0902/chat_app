import 'package:chat_app/models/chats.dart';
import 'package:chat_app/models/user_detail.dart';
import 'package:chat_app/screens/chat_single.dart';
import 'package:flutter/material.dart';
class Inbox extends StatefulWidget {
  const Inbox({super.key});
  @override
  State<Inbox> createState() => _InboxState();
}
class _InboxState extends State<Inbox> {
  final List<UserDetail> UserDetailList=[];
  @override
  void initState() {

    super.initState();

    UserDetailList.add(UserDetail(
        "Saloni", '#1231', "https://www.jquery-az.com/html/images/banana.jpg", [
      Chats(
          "Hi", "12:20", true, "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg"),
      Chats(
          "hello000000000", "1:00", false, "https://www.jquery-az.com/html/images/banana.jpg"),
      Chats(
          "how", "11:45", true, "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg"),
      Chats(
          "are", "10:23", false, "https://www.jquery-az.com/html/images/banana.jpg"),
      Chats(
          "you", "5:30", true, "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg")

    ]));

    UserDetailList.add(UserDetail(
        "Yashika", '#1234', "https://deepai.org/static/images/cyberpunkdolphin.png",
        [
          Chats(
              "okay", "11:45", true,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg"),
          Chats(
              "will", "09:43", false,
              "https://deepai.org/static/images/cyberpunkdolphin.png"),
          Chats(
              "try", "01:32", false,
              "https://deepai.org/static/images/cyberpunkdolphin.png"),
          Chats(
              "my", "07:21", true,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg"),
          Chats(
              "best", "03:43", false,
              "https://deepai.org/static/images/cyberpunkdolphin.png")
        ]));

    UserDetailList.add(UserDetail(
        "sonu", '#1234', "https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg",
        [
          Chats(
              "Hi", "5:35", true,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg"),
          Chats(
              "the", "2:34", false,
              "https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg"),
          Chats(
              "cat", "5:32", true,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg"),
          Chats(
              "is", "4:54", false,
              "https://onlinejpgtools.com/images/examples-onlinejpgtools/sunflower.jpg"),
          Chats(
              "cute", "09:45", true,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg")
        ]));

    UserDetailList.add(UserDetail(
        "monu", '#1234', "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg",
        [
          Chats(
              "did", "10:55", true,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg"),
          Chats(
              "you", "2:12", false,
              "https://img.lovepik.com/bg/20231206/husky-puppy-among-clouds-pink-jpg_2450518_wh1200.png"),
          Chats(
              "find", "2:45", true,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg"),
          Chats(
              "my", "3:52", false,
              "https://img.lovepik.com/bg/20231206/husky-puppy-among-clouds-pink-jpg_2450518_wh1200.png"),
          Chats(
              "diary", "6:49", true,
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1025px-Cat03.jpg")
        ]));

  }

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
            itemCount: UserDetailList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:  NetworkImage(UserDetailList[index].image),
                ),
                title: Text(UserDetailList[index].name),
                subtitle: Text(UserDetailList[index].userChats[0].message),
                trailing: Text(
                  UserDetailList[index].userChats[index].message_time,
                  style: const TextStyle(color: Colors.black54),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ChatSingle(UserDetailList[index]),
                    ));
                },

              );
            }
      ),
    );
  }
}
