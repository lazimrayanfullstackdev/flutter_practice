import 'package:flutter/material.dart';


import 'api_crud.dart';

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: apiCrud(),
    );
  }
}