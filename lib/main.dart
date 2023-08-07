import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_test1/Screens/homescreen.dart';
import 'package:iti_test1/Screens/loginscreen.dart';
import 'package:iti_test1/Screens/sign_up.dart';
import 'package:iti_test1/Screens/veiw_all.dart';
import 'package:iti_test1/note/cubit/note_cubit.dart';
import 'package:iti_test1/splashscreen.dart';

import 'package:iti_test1/Screens/task2screen.dart';
import 'package:iti_test1/Screens/taskscreen.dart';

import 'Screens/item.dart';
import 'main/screens/mainscreen.dart';
import 'Screens/onboarding.dart';
import 'note/notescreen.dart';
import 'package:hive/hive.dart';
import 'note/Hive/boxes.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(notebox);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit()..getmynote(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: notescreen(),
      ),
    );
  }
}
