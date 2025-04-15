// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({ super.key,required this.title,required this.onPressed,});
 final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:Appcolor.buttoncolor,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
      ),
      child: Text( title, style: TextStyle( fontSize: 25, color: Colors.white,
        ),
      ),
    );
  }
}
