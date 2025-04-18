// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/views/screen/add_list.dart';
import 'package:todo_list/widgets/common_button.dart';

class EditAddlistScreen extends StatelessWidget {
  const EditAddlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
        body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                    Navigator.pushReplacement(
                     context,
                   MaterialPageRoute(builder: (_) => AddListScreen()),
                   );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                 
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Tittle of your Task", 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 550,
                height: 2,
                color: Appcolor.buttoncolor,
              ),
              SizedBox(height: 20),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncove",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
         Padding(
           padding: const EdgeInsets.only(left: 150,top: 520),
           child: SizedBox(height:60,width: 300,
           child:  CommonButton(title: 'Update', onPressed: (){})),
         ),
            ],
          ),
          
        ),
        
      ),
    
    );
  }
}