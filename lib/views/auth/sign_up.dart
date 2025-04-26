// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/views/auth/sign_in.dart';
import 'package:todo_list/widgets/common_button.dart';
import 'package:todo_list/widgets/commontext_filed.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Appcolor.maincolor,
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.01),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Get.offAll(() => SignInScreen());
                  },
                ),
              ),
              SizedBox(height: height * 0.1),
              Text(
                "Welcome Onboard!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: height * 0.02),
              Text(
                "Let's help you meet up your task",
                style: TextStyle(fontSize: 20, color: Appcolor.buttoncolor),
              ),
              SizedBox(height: height * 0.09),
              
              CommontextFiled(
                labeltext: 'Enter your Email address',
                controller: emailcontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: height * 0.03),
              CommontextFiled(
                labeltext: 'Create a Password',
                controller: passwordcontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),

              Padding(
                padding: EdgeInsets.only(top: height * 0.15),
                child: SizedBox(
                  width: width * 0.5,
                  height: height * 0.05,
                  child: CommonButton(
                    isLoding: isLoading,
                    title: "Sign Up",
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          isLoading = true;
                        });
                        await signup();
                        setState(() {
                          isLoading = false;
                        });
                      }
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          color: Appcolor.fontcolor,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAll(() => SignInScreen());
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Appcolor.buttoncolor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future signup() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passwordcontroller.text.trim(),
      );
      Get.offAll(() => SignInScreen());
    } on FirebaseAuthException catch (e) {
      Get.snackbar(
        'Error',
        e.message ?? 'An error occurred',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }
}
