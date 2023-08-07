import 'package:flutter/material.dart';

import '../../Screens/item.dart';
import '../../Screens/onboarding.dart';
import '../../Screens/sign_up.dart';
import '../../Screens/task2screen.dart';



class MainController{

  int selectedIndex=0;
  final List<Widget> screenList=[
    item(),
    const task2screen(),
    const  sign_up(),
    onboarding()
  ];




}