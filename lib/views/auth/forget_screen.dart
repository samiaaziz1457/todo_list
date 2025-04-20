// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/constant/appimages.dart';
import 'package:todo_list/views/auth/sign_in.dart';
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
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
             Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                         Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => SignInScreen()), );
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
                  height: 250,
                ),
                CommontextFiled(labeltext: 'Forget Password'),
                 Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: SizedBox(
                   width: 300,
                    height: 60,
                    child: CommonButton(title: "Sign UP", onPressed: (){
                    }),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}