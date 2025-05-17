// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, avoid_types_as_parameter_names, override_on_non_overriding_member, annotate_overrides

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/constant/appimages.dart';
import 'package:todo_list/views/auth/forget_screen.dart';
import 'package:todo_list/views/auth/sign_up.dart';
import 'package:todo_list/views/screen/profile_screen.dart';
import 'package:todo_list/widgets/common_button.dart';
import 'package:todo_list/widgets/commontext_filed.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
    final _formkey = GlobalKey<FormState>();
       final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool isLoading = false;
  Widget build(BuildContext context) {
    
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
        body: Padding(
          padding: EdgeInsets.only(top: height * 0.01),
          child: Form(
            key: _formkey,
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
                  
                  CommontextFiled(labeltext: 'Enter your email address',
                  controller: emailcontroller,
                  validator: (Value)
                  {
                    if(Value==null || Value.isEmpty)
                    {
                      return 'please Enter your email';
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: height * 0.03,),
                  CommontextFiled(labeltext: 'Confrim Password',
                  controller: passwordcontroller,
                  validator: (value)
                  {
                     if(value==null || value.isEmpty)
                    {
                      return 'please Enter your email';
                    }
                    else if(value.length==6)
                    {
                      return 'please enter 6 chr password';
                    }
                    return null;
                  },
                  ),
                  SizedBox(height: height*0.02,),
                  TextButton(onPressed: (){
                     Get.off(() => ForgetScreen());
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
                        if(_formkey.currentState!.validate())
                        {
                          setState(() {
                            isLoading=true;
                          });
                       Signin();
                       setState(() {
                         isLoading=false;
                       });
                        }
                   
                      }),)),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.3 ),
                        child: Row(
                          children: [
                            Text(" Don't have an account", style: TextStyle(color: Appcolor.fontcolor,fontSize: 17),),
                            TextButton(onPressed: (){
                               Get.off(() => SignUpScreen());
                            }, child: Text("Sign UP",style: TextStyle(color: Appcolor.buttoncolor,fontSize: 19),))
                          ],
                        ),
                      ),
                    ],),
          ),
        ),
              );
  }

  Future Signin() async
  {
    try {
      setState(() {
        isLoading=true;
      });
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailcontroller.text, password: passwordcontroller.text, );
      // Get.offAllNamed(RouteNames.profile);
      Get.to(ProfileScreen());
    setState(() {
      isLoading=false;
    });
    } catch (e) {
      Get.snackbar('Erro', e.toString(),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent,
      colorText: Colors.black
      );
      
    }
    finally{
      setState(() {
        isLoading=false;
      });
    }
  }
}