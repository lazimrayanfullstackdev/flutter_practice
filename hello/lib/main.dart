import 'package:flutter/material.dart';

void main(){
 runApp(MaterialApp(
   home: Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.deepPurpleAccent,
       title: Text("Hello"),
       centerTitle: true, //to center the title
     ),
     body: Center(child: Text(
         "Hello World",
       style: TextStyle(
         fontSize: 25,
       ),
         textDirection: TextDirection.ltr,
     )),
   ),
 ));
}