// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';

class CommonButton extends StatelessWidget {

  final String title;
  final VoidCallback onPressed;
  final bool ? isLoding;
  const CommonButton({ super.key,required this.title,required this.onPressed, this.isLoding= false});

  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:Appcolor.buttoncolor,
        padding: EdgeInsets.symmetric(
         horizontal: MediaQuery.of(context).size.width * 0.0002, 
         vertical: MediaQuery.of(context).size.height * 0.010, 
            ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
        ),
        
      ),
      child: 
        
        
         isLoding ==true  ? CircularProgressIndicator():
           Text( title, style: TextStyle( fontSize: 25, color: Colors.white,
            ),
          
        ),
    
    );
  }
}
