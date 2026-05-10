// ignore_for_file: file_names
import 'dart:async';

import 'package:flutter/material.dart';

class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  @override
  void initState(){
    super.initState();
  Timer(Duration(seconds:2 ), (){
    Navigator.pushNamed(context, 'new');
  });
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
body:Center(
  child: Container(
    color: Colors.redAccent,
    
    child:Icon(Icons.blur_on_outlined,color: Colors.white,size: 52,) ,),
)
      )
    );
  }
}

