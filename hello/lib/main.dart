import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Lazim Rayan Form",
        home: Home()
    );

}
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _numberController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Lazim Rayan OTT",style:TextStyle(
          fontSize: 25,
        ) ,

        ),
      ),
      body:
      // ListView.builder(
      //   itemCount: 15,
      //   itemBuilder: (context, index){
      //     return ListTile(
      //       title: Text("Lazim Rayan ${index + 1}"),
      //       subtitle: Text("App Developer"),
      //       leading: Icon(Icons.account_circle, size: 20),
      //       trailing: Icon(Icons.safety_check),
      //     );
      //
      //
      //   },
      // )

      Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: false,
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.indigo),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.send),
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                    helperText: "Enter your email number",
                    helperStyle: TextStyle(fontSize: 15, color: Colors.black),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black , width: 2)
                    )
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    filled: false,
                    hintText: "Enter Your Name",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.indigo),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.send),
                    labelText: "Name",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                    helperText: "Enter your Full Name",
                    helperStyle: TextStyle(fontSize: 15, color: Colors.black),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black , width: 2)
                    )
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: false,
                    hintText: "Enter Your Number",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.indigo),
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.send),
                    labelText: "Mobile",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                    helperText: "Enter your mobile number",
                    helperStyle: TextStyle(fontSize: 15, color: Colors.black),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black , width: 2)
                    )
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _passwordController,
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                    filled: false,
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(fontSize: 18, color: Colors.indigo),
                    prefixIcon: Icon(Icons.security),
                    suffixIcon: Icon(Icons.send),
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                    helperText: "Enter your password",
                    helperStyle: TextStyle(fontSize: 15, color: Colors.black),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black , width: 2)
                    )
                ),
              )
          ),

          ElevatedButton(onPressed: (){
            print(_emailController.text);
            print(_nameController.text);
            print(_numberController.text);
            print(_passwordController.text);
          }, child: Text("Submit")),

          ElevatedButton(onPressed: (){
            _nameController.clear();
            _emailController.clear();
            _numberController.clear();
            _passwordController.clear();
          }, child: Text("Clear")),

          Text("Thank you for Choosing us", style: TextStyle(fontSize: 15, color: Colors.black)),
          Divider(color: Colors.indigo),
          Text("We will contact with you soon", style: TextStyle(fontSize: 15, color: Colors.black)),

          ListTile(
            title: Text("Lazim Rayan"),
            subtitle: Text("App Developer"),
            leading: Icon(Icons.account_circle, size: 20),
            trailing: Icon(Icons.safety_check),
          ),

          ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index){
            return ListTile(
              title: Text("Lazim Rayan"),
              subtitle: Text("App Developer"),
              leading: Icon(Icons.account_circle, size: 20),
              trailing: Icon(Icons.safety_check),
            );
            }
          )
  ]
    )
    );
          //);

          // Column(
          //   children: [
          //     Text(_emailController.text, style: TextStyle(
          //     fontSize: 20, color: Colors.lightBlueAccent
          //     ),
          //     ),
          //     Text(_nameController.text, style: TextStyle(
          //         fontSize: 20, color: Colors.lightBlueAccent
          //     ),
          //     ),
          //     Text(_numberController.text, style: TextStyle(
          //         fontSize: 20, color: Colors.lightBlueAccent
          //     ),
          //     ),
          //     Text(_passwordController.text, style: TextStyle(
          //         fontSize: 20, color: Colors.lightBlueAccent
          //     ),
          //     )
          //   ],
          // )
        //],
      //)
      //);
  }
}




















//Flutter Text, appbar, body, column, color, container, button, icon, styling - Flutter module 1
// import 'package:flutter/material.dart';
//
// void main(){
//  runApp(MaterialApp(
//    title: "Rayan's App",
//    home: SafeArea(child: Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.deepPurpleAccent.shade200,
//        title: Text("Hello",
//          style: TextStyle(
//            fontSize: 30,
//            color: Colors.white,
//          ),),
//        centerTitle: true, //to center the title
//      ),
//      body: Column(
//          children: [ Center(
//                      child: ElevatedButton(
//              style: ElevatedButton.styleFrom(
//                backgroundColor: Colors.green,
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(25)
//                )
//              ),
//        onPressed: (){
//             print("This button is clicked");
//          }, child:
//            Text("Send",style: TextStyle(
//            color: Colors.white,
//            fontSize: 25
//          ),
//                      )
//          )
//      ),
//           Icon(Icons.ac_unit_outlined, size: 30, color: Colors.red),
//            TextButton(onPressed: (){
//              print("I am text button");
//            }, child: Text("Click Me", style: TextStyle(
//              color: Colors.deepPurpleAccent,fontSize: 20
//            ),)),
//            IconButton(onPressed: (){
//              print("I am icon button");
//            }, icon: Icon(Icons.add_a_photo, size: 30, color: Colors.black)),
//
//            InkWell(
//            onTap: (){
//              print("I am on tap");
//            },
//                onDoubleTap: (){
//              print("I am double tap");
//                },
//                child: Container(
//              height: 200,
//              width: 200,
//              margin: EdgeInsets.only(top: 20),
//              padding: EdgeInsets.all(20),
//              alignment: Alignment.center,
//              color: Colors.amber,
//              child: Text("I am Rayan",style: TextStyle(
//                color: Colors.black,
//                fontSize: 25
//              ),),
//            )
//            )
//  ]
//  )
//    ),
//  )
//  )
//  );
// }