import 'package:flutter/material.dart';


class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var input = TextEditingController();
  var nameVal = "";
  
  @override
  void initState() {
    super.initState();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: TextField(
              controller: input,
              decoration: InputDecoration(
                hintText: "hello",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),

          ElevatedButton(
            onPressed: () async {
              var name = input.text.toString();
              

              
            },
            child: Text("Click"),
          ),
        ],
      ),
    );
  }

  


}
/*

toggle button 
like 


proper form validation name cannot be empty 
list and map

passing data between screens 

reusable widget custome button widget cutsom tectfield widget


*/