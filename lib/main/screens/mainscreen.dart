import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti_test1/Screens/item.dart';
import 'package:iti_test1/Screens/onboarding.dart';
import 'package:iti_test1/Screens/sign_up.dart';
import 'package:iti_test1/Screens/task2screen.dart';

import '../controller/maincontroller.dart';
class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  int selectedindex=0;
  final _mainController =MainController();
  List screenlist=[item(),task2screen(),sign_up(),onboarding()];
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:Colors.transparent,
        buttonBackgroundColor:Color(0xFF67C1C2) ,
        items: <Widget>[
          Icon(Icons.home_outlined, size: 30,color: Colors.black,),
          Icon(Icons.menu, size: 30,color: Colors.black,),
          Icon(Icons.save, size: 30,color: Colors.black,),
          Icon(CupertinoIcons.profile_circled, size: 30,color: Colors.black,),
        ],
        onTap: (index) {
          //Handle button tap
          _mainController.selectedIndex=index;
          setState(() {

          });
        },
      ),
      body:_mainController.screenList[_mainController.selectedIndex] ,

    );
  }
}
