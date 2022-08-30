import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
            "Easiest way to remember when to have the medicine",
            style: TextStyle(color: Colors.black, fontSize: 20),
        ),
          ), 
        ),backgroundColor: Colors.deepPurple.shade100,
    );
  }
}