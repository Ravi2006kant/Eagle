import 'package:eagle/pages/anim.dart';
import 'package:eagle/pages/hello.dart';
import 'package:eagle/pages/homepage.dart';
import 'package:eagle/pages/introScreen.dart';
import 'package:eagle/pages/may13.dart';
import 'package:eagle/pages/statef.dart';
import 'package:eagle/student/student.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {'may13': (context) => May13(), 'hello': (context) => Hello()},
      home:
          May13(), // <--- THIS SAYS "THIS IS THE PROBLEM" BECAUSE IT DESTROYS THE DATA PACKAGES!
    );
  }
}


// List<String> stud = ["kalix", "alex", "john"];
// List<int> mark = [90, 50, 10];
// void main() {
//   Student s1 = Student(name: stud[0], marks: mark[0]);
//   Student s2 = Student(name: stud[1], marks: mark[1]);
//   Student s3 = Student(name: stud[2], marks: mark[2]);
//   for (int i = 0; i <= mark.length; i++) {
//     if (mark[i] <= 35) {
//       print("pass");
//     } else {
//       print("fail");
//     }
//   }
// }
















