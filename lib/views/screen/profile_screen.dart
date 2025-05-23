// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, unused_local_variable

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/views/screen/add_list.dart';
import 'package:todo_list/views/screen/edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, String>> tasks = [
    {
      'title': 'Title your task',
      'description': 'Description of your task is ...',
      'time': '6:45 pm',
    },
     {
      'title': 'Title of your task',
      'description': 'Description of your task is ...',
      'time': '6:45 pm',
    },
     {
      'title': 'Title of your task',
      'description': 'Description of your task is ...',
      'time': '6:45 pm',
    },
     {
      'title': 'Title of your task',
      'description': 'Description of your task is ...',
      'time': '6:45 pm',
    },
    {
      'title': 'Title of your task',
      'description': 'Description of your task is ...',
      'time': '5:35 pm',
    },
    {
      'title': 'Title of your task',
      'description': 'Description of your task is ...',
      'time': '8:15 am',
    },
     {
      'title': 'Title of your task',
      'description': 'Description of your task is ...',
      'time': '8:15 am',
    },
    
  ];
  final List<Color> cardColors = [
    Color(0xffC9A9A9),
    Color(0xffB9C9A9),
    Color(0xffAAA9C9),
   Color.fromARGB(255, 251, 212, 153),
    Color.fromARGB(255, 157, 201, 248),
     Color.fromARGB(255, 246, 162, 253),
  ];
  late List<Color> randomizedColors;
  @override
  void initState() {
    super.initState();
    randomizedColors = _generateRandomColors();
  }
  List<Color> _generateRandomColors() {
    final random = Random();
    return List<Color>.generate(
      tasks.length,
      (_) => cardColors[random.nextInt(cardColors.length)],
    );
  }
  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Appcolor.maincolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height*0.23,
            width: double.infinity,
            color: Appcolor.buttoncolor,
          
            child:Center(
             
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
          Navigator.pushReplacement(
           context,
           MaterialPageRoute(builder: (_) => EditProfileScreen()),
          );
         },
          borderRadius: BorderRadius.circular(50),
           child: CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('assets/images/profile iamges.png'),
      backgroundColor: Colors.white,
      ),
          ),
           ),
                  SizedBox(height: height*0.02),
                  Text(
                    'Welcome Fisayomi',
                    style: TextStyle(
                      fontSize: 22,
                      color: Appcolor.fontcolor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left:height*0.02, top: height*0.02),
            child: Text(
              "Todo  Tasks.",
              style: TextStyle(
                fontSize: 35,
                color: Appcolor.fontcolor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: height*0.02),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: height*0.02),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return taskCard(tasks[index], randomizedColors[index]);
              },
            ),
          ),
         Padding(
           padding:  EdgeInsets.only(left: height*0.46,bottom: height*0.04),
           child: InkWell(
           onTap: () {
             Get.off(() => AddListScreen());
                },  
                 child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Appcolor.buttoncolor,
                  child: Icon(
                 Icons.add,
                 color: Appcolor.maincolor,
                 size: 50,
                   ),
                ),
               ),
         ),
        ],
      ),
    );
  }
  Widget taskCard(Map<String, String> task, Color color) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [                        
         CircleAvatar(
             radius: 15,
              backgroundColor: const Color.fromARGB(255, 205, 45, 33),
             child: Icon(  Icons.delete, color: Colors.white, size: 18, ),),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task['title'] ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  task['description'] ?? '',
                  style: TextStyle(
                    fontSize: 15,color: Appcolor.fontcolor),
                ),
              ],
            ),
          ),
          Text(
            task['time'] ?? '',
            style: TextStyle( fontSize: 15,color: Appcolor.fontcolor),
          ),
        ],
      ),
    );
  }
}
