import 'package:flutter/material.dart';
import 'package:flutter_application_27/loginpage.dart';


void main(List<String> args) {
  runApp(myapp());
  
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login sample",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Loginpage(),
    );
  }
}
