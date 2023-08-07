import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iti_test1/Screens/loginscreen.dart';
import 'package:iti_test1/Screens/sign_up.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../consts/images.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  int num = 1;
  PageController _controller = PageController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              _addboarding(
                  image: logo1,
                  title: "Browse all the category",
                  text1: "eeee wwww jbbb iiii lllllss nnnn vvvv",
                  text2: "eeee wwww jbbbl nnnn vvvv"),
              _addboarding(
                  image: logo2,
                  title: "Browse all arttul wonder",
                  text1: "aaaaaaaaaa aaaaaaaaaaa aaaaaaaa",
                  text2: "llllll lllll aaaaa"),

              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFFE1F1EF),
                      Color(0xFFFCEDED),
                      Color(0xFF282525),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        logo3,
                        width: 300,
                        height: 300,
                      ),
                      Text(
                        "Browse all the photo",
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "eeee wwwkkkkkkkkkkkkkkkk k vvvv",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "sssss ssss sssss",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => loginscreen()));
                            },
                            child: Icon(
                              CupertinoIcons.arrow_right_circle_fill,
                              color: Colors.white70,
                              size: 60,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Color(0xeff59ec1),
                ),
              ))
        ],
      ),
    );
  }
}

Widget _addboarding(
    {required String image,
    required String title,
    required String text1,
    required String text2}) {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFFE1F1EF),
          Color(0xFFFCEDED),
          Color(0xFF282525),
        ],
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 300,
            height: 300,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            text1,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text2,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ),
  );
}
