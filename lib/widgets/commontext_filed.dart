// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class CommontextFiled extends StatelessWidget {
  const CommontextFiled({super.key,  this.hinttext, required this.labeltext, this.prefixicons, this.controller, this.validator});
  final String ? hinttext;
  final String labeltext;
  final String? Function (String?)? validator;
  final IconData ? prefixicons;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
      final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;  
    return
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
       child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          hintText: hinttext,
          labelText: labeltext,
          prefixIcon: Icon(prefixicons),
          hintStyle: TextStyle(color: Colors.grey[700]),
           filled: true,
           fillColor: Colors.white,
       contentPadding: EdgeInsets.symmetric(
         horizontal: MediaQuery.of(context).size.width * 0.002, 
         vertical: MediaQuery.of(context).size.height * 0.004, 
       ),
           border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
           ),
         ),
           ),
     );
  }
}