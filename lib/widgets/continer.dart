// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class commoncontainer extends StatelessWidget {
  const commoncontainer({super.key, required this.height, required this.width, required this.color});
  final double height;
  final double  width;
  final Color  color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        
      ),
    );
  }
}