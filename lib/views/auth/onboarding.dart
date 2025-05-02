// ignore_for_file: use_super_parameters, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            SizedBox(height: height * 0.1),
            Center(
              child: Image.asset(
                Appimages.onboardingimage,
                height:height * 0.4,
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
            SizedBox(height: height * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing. Maxime, tempore! Animi nemo aut atque, deleniti nihil dolorem repellendus.",
                style: TextStyle(
                  fontSize: 28,
                  color: Appcolor.fontcolor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
             Spacer(),
            Padding(
              padding:  EdgeInsets.only(bottom:  height * 0.1),
              child: SizedBox(
               width: width * 0.5,  
              height: height * 0.05,
                child:
                CommonButton(title: " Get Started",
                  onPressed: (){
                    Get.off(() => SignUpScreen());
                  })
                ),
            ),
          ],
        ),
      ),
    );
  }
}
