import 'package:eagle/pages/anim.dart';
import 'package:eagle/pages/hello.dart';
import 'package:eagle/pages/homepage.dart';
import 'package:eagle/pages/introScreen.dart';
import 'package:eagle/pages/may13.dart';
import 'package:eagle/pages/statef.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
  routes: {
    'may13': (context) => May13(),
    'hello': (context) => Hello(),
  },
  home: May13(), // <--- THIS SAYS "THIS IS THE PROBLEM" BECAUSE IT DESTROYS THE DATA PACKAGES!
);
  }
}
