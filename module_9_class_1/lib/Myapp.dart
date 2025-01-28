import "package:flutter/material.dart";

import "module_9_class_1.dart";

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override

  Widget build(BuildContext context){
    return (MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.red,
      appBarTheme: AppBarTheme(
        color: Colors.pinkAccent,
        centerTitle: true,
      )
    ),
    home: LayoutBuilderExample(),
    )
    );
  }
}