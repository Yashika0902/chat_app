import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget{
  const ProfilePage( {super.key});
  @override
  Widget build(context){
    return Center
      (child:
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Opacity(opacity: 0.7,
            child: Image.asset('assets/images/dp_1.png',
              scale: 1,
              height: 150,
              width: 150,),
        ),
        ),
         const TextField(
         decoration:  InputDecoration(
         labelText: 'Name',
    filled: true,
    fillColor: Colors.white70,
    prefixIcon: Icon(Icons.person), 
             suffixIcon: Icon(Icons.edit)
    ),
    ),
        const TextField(
          decoration:  InputDecoration(
              labelText: 'About',
              filled: true,
              fillColor: Colors.white70,
              prefixIcon: Icon(Icons.info_outline),
              suffixIcon: Icon(Icons.edit)
          ),
        ),

        const TextField(
          decoration:  InputDecoration(
              labelText: 'Phone',
              filled: true,
              fillColor: Colors.white70,
              prefixIcon: Icon(Icons.phone),
          ),
        ),
      ],
    ) ,
    );
  }
}