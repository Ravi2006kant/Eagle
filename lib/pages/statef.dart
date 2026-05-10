import 'package:flutter/material.dart';

class Statef extends StatefulWidget {
  const Statef({super.key});

  @override
  State<Statef> createState() => _StatefState();
}

class _StatefState extends State<Statef> {
  var s = 100.0;
  Color col = Colors.blueGrey;
  var ic = Icons.favorite_border_outlined;
  var w = 100.0;
  int count = 0;
  Text txt = Text("Hide");
  var op = 1.0;
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: col,
      appBar: AppBar(title: Text("Testing"), backgroundColor: col),
      body: Column(
        children: [
          Center(
            child: Container(
              color: Colors.green,
              width: 150,
              height: 100,
              child: AnimatedOpacity(
                opacity: op,
                duration: Duration(seconds: 0),
                child: Text(
                  "hello this is me wha tis th up to yiou i am good person ",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
          ),
          SizedBox(height: 50, width: 50, child: Text('$count')),
          ElevatedButton(
            onPressed: () {
              count++;
              if (toggle) {
                setState(() {
                  op = 0;
                  txt = Text("Show");
                  col = Colors.black;
                  toggle = false;
                  
                });
              } else {
                setState(() {
                  op = 1;
                  
                  col = Colors.blueGrey;
                  txt = Text("Hide");
                  toggle = true;
                });
              }
            },
            child: txt,
          ),
        ],
      ),
    );
  }
}

