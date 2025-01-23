import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home()
    );
    }
}

class Home extends StatelessWidget{
  const Home ({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.7),
        title: Text("Lazim Rayan OTT"),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
      child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your Email",
                label: Text("Email"),
                helperText: "Enter your password",
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                return "Empty email not allowed";
                }
                return null;
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your password",
                label: Text("Password"),
                helperText: "Enter your password",
              ),
              validator: (value){
                if(value == null || value.isEmpty || value.length<6){
                  return "Password must be at least 6 character";
                }
                return null;
              },
            ),
            SizedBox(height: 10,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UserInfo()));
              }
            },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueGrey,
    )
    ,child: Text("Submit", style: TextStyle(
                  fontSize: 17,
                    color: Colors.white,
                ),),),),
          ],
          )
          )
    )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        print("I am floating action button");
      }, label: Icon(Icons.camera)),
    );
  }
}

class UserInfo extends StatelessWidget{
  const UserInfo({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.withOpacity(0.7),
        title: Text("Lazim Rayan OTT"),
        centerTitle: false,
      ),
      body: Center(
        child: Text("I am page 2", style: TextStyle(fontSize: 25, color: Colors.blueGrey),),
      ),
    );
  }
}