import 'package:eagle/pages/anim.dart';
import 'package:eagle/pages/homepage.dart';
import 'package:eagle/pages/introScreen.dart';
import 'package:eagle/pages/statef.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
   debugShowCheckedModeBanner: false,   
      routes: {
        'homepage' : (context) => Homepage(),
        'introscreen' : (context) => Introscreen(),
        'anim' : (context) => Anim(),
        'new' : (context) => Statef(),
      } ,
        home: Introscreen(),
    );
  }
}