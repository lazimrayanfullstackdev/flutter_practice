import 'package:flutter/material.dart';

import 'cityname.dart';

void main(){
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget{
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _customWidget();
}

class _customWidget extends State<Myapp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              cityName(),
              SizedBox(width: 15,),
              cityName(),
              SizedBox(width: 15,),
              cityName(),
              SizedBox(width: 15,),
              cityName(),
              SizedBox(width: 15,),
              cityName(),
            ],
          ),
        ),
      ),
    );
  }
}

