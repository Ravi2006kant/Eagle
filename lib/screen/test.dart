import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var input = TextEditingController();
  var nameValue = "dsfg";
  @override
  void initState() {
    super.initState();
    setState(() {
      getValue();
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
              var sharepref = await SharedPreferences.getInstance();

              sharepref.setString("name", name);
            },
            child: Text("Click"),
          ),
        ],
      ),
    );
  }
}

void getValue() async {
  var sharepref = await SharedPreferences.getInstance();
  var getName = sharepref.getString('name');

  nameValue = getName!;
}
