import 'package:chat_app/models/chats.dart';
class UserDetail {
 final String id;
 final String name;
 final String image;

 List<Chats> userChats;
 UserDetail( this.name,this.id, this.image, this.userChats);
}