import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key, required title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
            "You can search your medicine here",
            style: TextStyle(color: Colors.black, fontSize: 20),
        ),
          ), 
        ),backgroundColor: Colors.pink.shade100,
    );
  }
}