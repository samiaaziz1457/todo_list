// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/views/screen/edit_addlist.dart';
import 'package:todo_list/views/screen/profile_screen.dart';

class AddListScreen extends StatelessWidget {
  const AddListScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
                   MaterialPageRoute(builder: (_) => ProfileScreen()),
                   );
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: () { 
                    Navigator.pushReplacement(
                   context,
                   MaterialPageRoute(builder: (_) => EditAddlistScreen()),
                  );
                    },
                    icon: Icon(Icons.edit),
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
            ],
          ),
        ),
      ),
    );
  }
}
