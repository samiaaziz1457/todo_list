// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/constant/appimages.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 200),
            Center(
              child: Image.asset(
                Appimages.onboardingimage,
                height: 400,
              ),
            ),
          
            const Text(
              "Get things done with TODo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing. Maxime, tempore! Animi nemo aut atque, deleniti nihil dolorem repellendus.",
                style: TextStyle(
                  fontSize: 29,
                  color: Appcolor.fontcolor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: SizedBox(
                width: 242,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Appcolor.buttoncolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 26,color: Appcolor.maincolor,),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
