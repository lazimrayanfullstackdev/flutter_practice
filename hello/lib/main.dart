import 'package:flutter/material.dart';

void main(){
 runApp(MaterialApp(
   title: "Rayan's App",
   home: SafeArea(child: Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.deepPurpleAccent,
       title: Text("Hello",
         style: TextStyle(
           fontSize: 30,
           color: Colors.white,
         ),),
       centerTitle: true, //to center the title
     ),
     body: Center(child: Text(
         "Hello World",
       style: TextStyle(
         fontSize: 50,
         color: Colors.deepPurple,
         fontWeight: FontWeight.w300,
         overflow: TextOverflow.ellipsis,
       ),
         textDirection: TextDirection.ltr,
     )),
   ),
 )));
}