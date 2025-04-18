// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
      body: Column(
        children: [
        Container(
            height: 250,
            width: double.infinity,
            color: Appcolor.buttoncolor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Material(
  color: Colors.transparent,
  child: InkWell(
    onTap: () {},
    borderRadius: BorderRadius.circular(50),
    child: CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('assets/images/profile iamges.png'),
      backgroundColor: Colors.white,
      ),),
       ), ],
      ),
        )
          )
          ]),
            );
  }
}