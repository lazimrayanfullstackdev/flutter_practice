import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class restapi extends StatefulWidget {
  const restapi({super.key});

  @override
  State<restapi> createState() => _restapiState();
}

class _restapiState extends State<restapi> {
  
  List users = [];
  
  Future<void> fetchUsers() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    print(response.body);
    print(response.statusCode);
    if(response.statusCode == 200){
      users = jsonDecode(response.body);
    }else{
      throw Exception("Failed to Load");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest Api",style: TextStyle(color: Colors.white, fontSize: 27),),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index){
            final user = users[index];
            return Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text(user['name'][0], style: TextStyle(color: Colors.white),),
                ),
                title: Text(user['name'],style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 1,),
                    Text("username : ${user['username']}",style: TextStyle(color: Colors.grey),),
                    Text("email : ${user['email']}",style: TextStyle(color: Colors.grey),),
                    Text("phone : ${user['phone']}",style: TextStyle(color: Colors.grey),),
                    Text("website : ${user['website']}",style: TextStyle(color: Colors.grey),),
                    Text("Address : ${user['address']['street']}, ${user['address']['city']}",style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
            );
          }
      )
    );
  }
}
