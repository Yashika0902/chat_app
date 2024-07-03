
import 'package:chat_app/screens/inbox.dart';
import 'package:chat_app/screens/profile_page.dart';
import 'package:chat_app/screens/search_bar.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int _selectedIndex = 0;
  @override
  Widget build (BuildContext context ){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom:
           TabBar(
            indicatorColor: Colors.black,
            labelStyle: const TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),  //For Selected tab
            unselectedLabelStyle: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.w700), //For Un-selected Tabs
            tabs: const [
              Tab(
                text: 'HOME',
              ),
              Tab(
                text: 'INBOX',
              )
            ],
            onTap: (int index){
debugPrint("Index  clicked $index");
setState(() {
  _selectedIndex = index;
});

            },
          ),
        ),
       body:Column(
         children: [const Search(),
           _selectedIndex == 0 ? const ProfilePage() : const Inbox()
         ],
       ),
       )
        );


  }
}
