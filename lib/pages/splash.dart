import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/onboarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigaehome();
  }

  _navigaehome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: const Text(
          "MEDTRACKER",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    ));
  }
}
