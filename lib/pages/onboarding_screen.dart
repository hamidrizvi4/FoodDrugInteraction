import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/intro_page_1.dart';
import 'package:flutter_application_2/pages/intro_page_2.dart';
import 'package:flutter_application_2/pages/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track of page
  final PageController _controller = PageController();
  //keep track of lastpage
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(title: 'GFG',),
              IntroPage2(),
              IntroPage3(),
            ],
          ),

          //dot indi

          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                      Curves.easeIn;
                    },
                    child: const Text('skip')),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const JumpingDotEffect(dotColor: Colors.white),
                ),

                //next
                onLastPage?
                GestureDetector(
                    onTap: () {
                     Navigator.push(context,
                     MaterialPageRoute(builder: (context){
                       return const HomePage();
                     },),);
                    },
                    child: const Text('Done'),)
                    : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    },
                    child: const Text('next')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
