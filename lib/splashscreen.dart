import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_test1/Screens/loginscreen.dart';
import 'package:iti_test1/Screens/onboarding.dart';

class splashscreen extends StatefulWidget {
  const splashscreen( {Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds :5), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>onboarding())) );
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFFE1F1EF),
                Color(0xFFFCEDED),
                Color(0xFF282525),
              ],
          ),),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/images/c2_logo.png",width: 300,height: 300,),

                   SpinKitChasingDots(
                     size: 50,
                     color: Color(0xFFE1F1EF),
                   )
                  ],
                ),
              ),
          ),
    );
  }
}
