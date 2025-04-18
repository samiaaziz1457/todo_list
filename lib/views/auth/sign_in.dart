// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/constant/appimages.dart';
import 'package:todo_list/views/auth/forget_screen.dart';
import 'package:todo_list/views/auth/sign_up.dart';
import 'package:todo_list/views/screen/profile_screen.dart';
import 'package:todo_list/widgets/common_button.dart';
import 'package:todo_list/widgets/commontext_filed.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                 SizedBox(height: 140),
                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                  Image.asset(
                  Appimages.signinimage,
                  height: 300,
                ),
                CommontextFiled(labeltext: 'Enter your email address'),
                SizedBox(height: 40,),
                CommontextFiled(labeltext: 'Confrim Password'),
                SizedBox(height: 50,),
                TextButton(onPressed: (){
                   Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) =>ForgetScreen()), );
                }, child:Text('Forget Password?',style: TextStyle(color: Appcolor.buttoncolor,fontSize: 20),) ),
                SizedBox(
                height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25,),
                  child: SizedBox(
                   width: 300,
                    height: 60,
                    child: CommonButton(title: "Sign In", onPressed: (){
                   Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) =>ProfileScreen()), );    
                    }),)),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Row(
                        children: [
                          Text(" Don't have an account", style: TextStyle(color: Appcolor.fontcolor,fontSize: 17),),
                          TextButton(onPressed: (){
                              Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => SignUpScreen()), );
                          }, child: Text("Sign UP",style: TextStyle(color: Appcolor.buttoncolor,fontSize: 19),))
                        ],
                      ),
                    ),
                  ],),
        ),
              );
  }
}