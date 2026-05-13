import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  @override

  Widget build(BuildContext context) {
    
   return Scaffold(
    backgroundColor: Colors.deepOrangeAccent[250],
    drawer: Drawer(
      width: 250,
    ),

    appBar: AppBar(
      title: Text("hello"),
    ),

    body: Hero(
      tag: 'next',
      
      child: Container(
        height: 100,
        width: 250,
        color: Colors.blue,
        child: Icon(Icons.radio,size: 50,color: Colors.amber,),
      ),
    ),
   ); 
  }
}