
// ignore_for_file: prefer_const_constructors, unused_local_variable, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/views/auth/onboarding.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}
class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>OnboardingScreen()), // Make sure LoginScreen is defined
      );
    });
  }
  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:Appcolor.maincolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
                Text("ToDo",style:TextStyle(color:Appcolor.fontcolor, fontSize: 45),)
          ]
        ),
      ),
    );
  }
}
