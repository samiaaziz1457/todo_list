// ignore_for_file: prefer_const_constructors, unused_local_variable, unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/constant/appimages.dart';
import 'package:todo_list/views/auth/sign_in.dart';

import 'package:todo_list/views/screen/profile_screen.dart';
import 'package:todo_list/widgets/common_button.dart';
import 'package:todo_list/widgets/commontext_filed.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
      body: Padding(
        padding: EdgeInsets.only(top:height * 0.04),
        child: Column(
          children: [
             Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                        Get.off(() => SignInScreen());
                    },
                  ),
                ),
                SizedBox(height: 150),
                Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                 Image.asset(
                  Appimages.addnewlistimage,
                 height:height * 0.3,
                ),
                CommontextFiled(labeltext: 'Forget Password'),
                 Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: SizedBox(
                    width: width * 0.5,  
              height: height * 0.05,
                    child: CommonButton(title: "Sign UP", onPressed: (){
                       Get.to(ProfileScreen());
                    }),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}