import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "You can set notification alarms for medicine reminder",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),
      backgroundColor: Colors.yellow.shade100,
    );
  }
}
