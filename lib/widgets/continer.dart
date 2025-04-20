// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class commoncontainer extends StatelessWidget {
  const commoncontainer({super.key, required this.height, required this.width, required this.color});
  final double height;
  final double  width;
  final Color  color;
  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        
      ),
    );
  }
}