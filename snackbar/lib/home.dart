import 'package:flutter/material.dart';


class Myapp extends StatefulWidget{
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _snackbarState();
}

class _snackbarState extends State<Myapp>{
  @override
  Widget build(BuildContext context) {
    return SnackBar();