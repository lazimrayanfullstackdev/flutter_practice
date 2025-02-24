import 'package:flutter/material.dart';
import 'package:todoapp/restapi.dart';
import 'package:todoapp/todoapp.dart';

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: restapi(),
    );
  }
}