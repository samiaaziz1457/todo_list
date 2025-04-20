// ignore_for_file: use_super_parameters, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/constant/appimages.dart';
import 'package:todo_list/views/auth/sign_up.dart';
import 'package:todo_list/widgets/common_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 160),
            Center(
              child: Image.asset(
                Appimages.onboardingimage,
                height: 350,
              ),
            ),
            const Text(
              "Get things done with TODo",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 49.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing. Maxime, tempore! Animi nemo aut atque, deleniti nihil dolorem repellendus.",
                style: TextStyle(
                  fontSize: 28,
                  color: Appcolor.fontcolor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: SizedBox(
                width: 250,
                height: 55,
                child:
                CommonButton(title: " Get Started",
                  onPressed: (){
                     Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => SignUpScreen()), );
                  })
                ),
            ),
          ],
        ),
      ),
    );
  }
}
