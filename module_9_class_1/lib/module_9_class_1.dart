import "package:flutter/material.dart";

class MediaQueryeExample extends StatelessWidget{
  const MediaQueryeExample({super.key});

  @override
  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
    appBar: AppBar(
      title: Text("This is MediaQuery",style: TextStyle(
      color: Colors.white,
      fontSize: 30,
      ),
      ),
      centerTitle: false,
    ),

    body: Center(
      child: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.blueAccent
        ),
        child: Center(
    child: Text("Responsive Design", style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),),
        )
      ),
    ),

    );
  }
}

class WrapExample extends StatelessWidget{
  final List<String> categories = ["food", "bus", "drink", "work", "passion","walk", "live", "song"];
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Example in Flutter", style: TextStyle(fontSize: 20, color: Colors.white),),
        backgroundColor: Colors.purple,
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
    child: Column(
        children: [
            Wrap(
            spacing: 10,  //row wise spacing between 1 tile to another (horizontally)
            runSpacing: 10, //spacing from one tile to another column-wise (vertically)
            children: categories.map((category){
            return Chip(label: Text(category, style: TextStyle(fontSize: 20),),
              backgroundColor: Colors.red.shade100,
            );
            }).toList()
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
            mainAxisSpacing: 20,
            children: List.generate(25, (index)=> Container(
                child: Text("Item ${index + 1}",style: TextStyle(fontSize: 20, color: Colors.white),),
                  color: Colors.blueAccent,
            )
            ),
          )
          )
        ],
      )
      ),
    );
  }


}

class LayoutBuilderExample extends StatelessWidget{
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout Builder"),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
      ),
      body: LayoutBuilder(
        builder: (context, con){
          if(con.maxWidth > 600 && con.maxWidth <1000){
            return Center(
              child: Text("This is tablet layout",style: TextStyle(fontSize: 15, color: Colors.indigo)),
            );
          }else if(con.maxWidth > 1000){
            return Center(
              child: Text("This is Desktop Layout", style: TextStyle(fontSize: 20, color: Colors.deepOrange) ),
            );
          }else{
            return Center(
              child: Text("This is mobile Layout", style: TextStyle(fontSize: 25, color: Colors.red)),
            );
          };
        }
      )
    );
  }
}