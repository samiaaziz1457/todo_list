// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

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
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
        body: Padding(
          padding: EdgeInsets.only(top: height * 0.01),
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
                 SizedBox(height: height * 0.1,),
                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                  Image.asset(
                  Appimages.signinimage,
                  height: height * 0.3, 
                ),
                CommontextFiled(labeltext: 'Enter your email address'),
                SizedBox(height: height * 0.03,),
                CommontextFiled(labeltext: 'Confrim Password'),
                SizedBox(height: height*0.02,),
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
                   width: width * 0.5,  
              height: height * 0.05,
                    child: CommonButton(title: "Sign In", onPressed: (){
                   Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) =>ProfileScreen()), );    
                    }),)),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.3 ),
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