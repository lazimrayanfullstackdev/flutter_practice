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
     body: Column(
         children: [ Center(
                     child: ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.green,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(25)
               )
             ),
       onPressed: (){
            print("This button is clicked");
         }, child:
           Text("Send",style: TextStyle(
           color: Colors.white,
           fontSize: 25
         ),
                     )
         )
     ),
          Icon(Icons.ac_unit_outlined, size: 30, color: Colors.red),
           TextButton(onPressed: (){
             print("I am text button");
           }, child: Text("Click Me", style: TextStyle(
             color: Colors.deepPurpleAccent,fontSize: 20
           ),)),
           IconButton(onPressed: (){
             print("I am icon button");
           }, icon: Icon(Icons.add_a_photo, size: 30, color: Colors.black)),

           InkWell(
           onTap: (),
               child: Container(
             height: 200,
             width: 200,
             margin: EdgeInsets.only(top: 20),
             padding: EdgeInsets.all(20),
             alignment: Alignment.center,
             color: Colors.amber,
             child: Text("I am Rayan",style: TextStyle(
               color: Colors.black,
               fontSize: 25
             ),),
           )
 ]
 )
   ),
 )
 )
 );
}