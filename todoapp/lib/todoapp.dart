import 'package:flutter/material.dart';

class todoApp extends StatefulWidget {
  const todoApp({super.key});

  @override
  State<todoApp> createState() => todoAppState();
}

class todoAppState extends State<todoApp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Todo List"),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
    );
  }
}