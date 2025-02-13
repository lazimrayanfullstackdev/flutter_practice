import 'package:flutter/material.dart';
import 'home.dart';

class _snackbarState extends State<Myapp>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar", style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("This is a snackbar"),
                  duration: Duration(seconds: 2),
                  action: SnackBarAction(label: 'undo', onPressed: () {}),
                )
            );
          }, child: Text("Snackbar Button"))
        ],
      ),
    );
  };