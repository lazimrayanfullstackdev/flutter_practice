import 'package:flutter/material.dart';

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

class _snackbarState extends State<Myapp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar",style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("This is a snackbar"),
                  duration: Duration(seconds: 2),
                  action: SnackBarAction(label: 'undo', onPressed: (){}),
                )
            );
          }, child: Text("Snackbar Button"))
        ],
      ),
    );
  }
}

class bottomSheet extends State<Myapp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet",style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
                isDismissible: true,
                context: context,
                builder: (context){
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text("This is a bottom Sheet", style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        ),
                        SizedBox(height: 10, width: double.infinity,),
                        Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                          ),
                        )
                      ],
                    ),
                  );
                }
            );
          }, child: Text("Botton Sheet"))
        ],
      ),
    );
  }
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
      body: Row(
        children: [
          Container(
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Image.network('https://i0.wp.com/singaporeglobalnetwork.gov.sg/wp-content/uploads/2023/09/6reasonswhysg-hero.jpeg?fit=1500%2C1000&ssl=1'),
                Text("Singapore",style: TextStyle(fontSize: 16),),
                SizedBox(height: 5,),
                Text("Singapore is a very beautiful city, you must visit singapore"),
              ],
            ),
          )
        ],
      ),
    );
  }
}