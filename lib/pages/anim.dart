import 'package:flutter/material.dart';

class Anim extends StatefulWidget {
  const Anim({super.key});

  @override
  State<Anim> createState() => _AnimState();
}

class _AnimState extends State<Anim> {
  var h = 250.0;
  var w = 250.0;
  var f = 25.0;
  var fc = Colors.black;
  Color col = Colors.white;
  bool toggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        width: 300,
        shadowColor: Colors.red[400],

        child: Text("hello  "),
      ),

      appBar: AppBar(
       
        title: Text("Animated Container"),
      ),
     
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.deepPurpleAccent,
                width: w,
                height: h,
                child: AnimatedOpacity(
                  opacity: 0.5,
                  duration: Duration(seconds: 2),
                  curve: Curves.elasticIn,
                  child: Center(child: Text("helo",style: TextStyle(fontSize: 55,color: Colors.white),)),
                ),
              ),
            ),
        
            Container(
              width: w,
              height: h,
              color: col,
              
            )
          ],
        ),
      ),
    );
  }
}
