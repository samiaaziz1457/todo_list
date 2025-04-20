// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:todo_list/constant/appcolor.dart';
import 'package:todo_list/views/screen/profile_screen.dart';
import 'package:todo_list/widgets/commontext_filed.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final width=MediaQuery.of(context).size.width;
      final height=MediaQuery.of(context).size.height;
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
                children: [ 
                   Padding(
                     padding: const EdgeInsets.only(top: 30),
                     child: Row(children: [
                         IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder: (_) => ProfileScreen()),);
        },
      ),
                        Spacer(),
                      Text("Save",style: TextStyle(color: Colors.white,fontSize: 20),),
                     ],),
                   ),
               Material(
  color: const Color.fromARGB(0, 255, 255, 255),
  child: InkWell(
    onTap: () {},
    borderRadius: BorderRadius.circular(50),
    child: CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('assets/images/profile iamges.png'),
      backgroundColor: Colors.white,
      child: Icon(Icons.add,color: Colors.black,size: 80,),
      )
       ,),
         ),
          ],),
           )
            ),
          Padding(
            padding: const EdgeInsets.only(right:450,top: 15),
            child: Text('Edit Profile',style: TextStyle(color: Appcolor.buttoncolor,fontSize: 25),),
          ),
          SizedBox(height: 20,),
          CommontextFiled(labeltext: 'Fisayomi'),
          SizedBox(height: 20,),
          CommontextFiled(labeltext: 'abc@gmail.com',),
        Padding(
  padding: const EdgeInsets.only(right: 500, top: 15),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        'More',style: TextStyle(  color: Appcolor.buttoncolor, fontSize: 18, ), ),],), ),
   SizedBox(height: 20),
   Padding(
     padding: const EdgeInsets.only(left: 10,),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
        leading: Icon(Icons.lock, color: Colors.black),
        title: Text("Privacy Policy",style: TextStyle(fontSize: 20),),
        onTap: () {}, 
        ),
        ListTile(
        leading: Icon(Icons.description, color: Colors.black),
        title: Text("Terms & Conditions",style: TextStyle(fontSize: 20),),
        onTap: () {},
        ),
       ListTile(
        leading: Icon(Icons.logout, color: Colors.red),
        title: Text(
          "Logout", style: TextStyle(color: Colors.red,fontSize: 20),),
        onTap: () {},
      ),
       ],
     ),
   ),
 ]), );
  }
}