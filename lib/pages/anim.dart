import 'package:flutter/material.dart';

class Anim extends StatefulWidget {
  const Anim({super.key});

  @override
  State<Anim> createState() => _AnimState();
}

class _AnimState extends State<Anim> {
  var ic = Icons.light_mode;
  Color sunCol = Colors.amberAccent;
  Color appBarCol = Colors.deepPurple;
  Color bg1col = Colors.white;
  bool light = true;
  var passIc = Icons.visibility_off;
  var toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1col, // vody bg
      appBar: AppBar(
        backgroundColor: appBarCol,
        title: Center(
          child: Text(
            "User Login",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              if (light) {
                setState(() {
                  ic = Icons.nightlight;
                  appBarCol = Colors.black;
                  bg1col = Colors.black87;
                  light = false;
                });
              } else {
                setState(() {
                  ic = Icons.light_mode;
                  bg1col = Colors.white;
                  appBarCol = Colors.deepPurple;
                  light = true;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(ic, size: 35, color: Colors.amberAccent),
            ),
          ),
        ],
      ),
      body: Center(
        
          
          
          child: AnimatedContainer(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.deepPurple.shade300,
            ),
            padding: EdgeInsets.all(10),
            duration: Duration(seconds: 2),
            
            width: 270,
            height: 300,
            child: Column(
              children: [
                SizedBox(height: 25),
          
                TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
          
                  decoration: InputDecoration(
                    label: Text("Name"),
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.person, color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.deepPurple.shade500),
                    ),
                  ),
                ),
          
                SizedBox(height: 25),
          
                //2nd text input
                TextField(
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  obscureText: toggle,
                  decoration: InputDecoration(
                    label: Text("password"),
          
                    suffixIcon: InkWell(
                      onTap: () {
                        if (toggle) {
                          setState(() {
                            passIc = Icons.visibility;
                            toggle = false;
                          });
                        } else {
                          setState(() {
                            passIc = Icons.visibility_off;
                            toggle = true;
                          });
                        }
                      },
                      child: Icon(passIc, color: Colors.white),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
          
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.deepPurple.shade500),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Application Submitted")),
                    );
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}

/* 

opacirty 
pasword toggle 
smooth transition - animate button / snackbar

*/
