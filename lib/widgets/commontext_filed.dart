// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CommontextFiled extends StatelessWidget {
  const CommontextFiled({super.key,  this.hinttext, required this.labeltext, this.prefixicons});
  final String ? hinttext;
  final String labeltext;
  final IconData ? prefixicons;
  @override
  Widget build(BuildContext context) {

    return
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: TextField(
        decoration: InputDecoration(
          hintText: hinttext,
          labelText: labeltext,
          prefixIcon: Icon(prefixicons),
          hintStyle: TextStyle(color: Colors.grey[700]),
           filled: true,
           fillColor: Colors.white,
       contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
           border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide.none,
           ),
         ),
           ),
     );
  }
}