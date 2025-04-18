// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/views/auth/sign_in.dart';
import 'package:todo_list/views/screen/profile_screen.dart';
import 'package:todo_list/widgets/common_button.dart';
import 'package:todo_list/widgets/commontext_filed.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                         Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => SignUpScreen()), );
                    },
                  ),
                ),
                SizedBox(height: 150),
                Text(
                  "Welcome Onboard!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25),
                Text(
                  "Let's help you meet up your task",
                  style: TextStyle(fontSize: 20, color:Appcolor.buttoncolor),
                ),
                SizedBox(height: 100),
                CommontextFiled(labeltext: 'Enter your Full Name'),
                SizedBox(height: 40),
                CommontextFiled(labeltext: 'Enter your Email address'),
                SizedBox(height: 40),
                CommontextFiled(labeltext: 'Create a Password'),
                SizedBox(height: 40),
               CommontextFiled(labeltext: 'Comfrim Your Password'),
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: SizedBox(
                   width: 300,
                    height: 60,
                    child: CommonButton(title: "Sign UP", onPressed: (){
                       Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) =>ProfileScreen()), );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account ? ",style: TextStyle(color: Appcolor.fontcolor,fontSize: 15),),
                       TextButton(onPressed: (){
                          Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => SignInScreen()), );
                       }, child: Text("Sign In",style: TextStyle(color: Appcolor.buttoncolor),))
                      ],
                    ),
                  ),
                ),
               
              ],
          ),
      ),
        );
  }
}