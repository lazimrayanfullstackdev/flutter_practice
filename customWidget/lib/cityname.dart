import 'package:flutter/material.dart';

class cityName extends StatelessWidget {
  const cityName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.network('https://i0.wp.com/singaporeglobalnetwork.gov.sg/wp-content/uploads/2023/09/6reasonswhysg-hero.jpeg?fit=1500%2C1000&ssl=1'),
          SizedBox(height: 5,),
          Text("Singapore",style: TextStyle(fontSize: 18),),
          SizedBox(height: 5,),
          Text("Singapore is a very beautiful city, you must visit singapore"),
        ],
      ),
    );
  }
}