import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart'; // <<<< Add this
import 'package:todo_list/views/auth/splash_screen.dart'; // starting screen

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // <<<< Add this line
  await Firebase.initializeApp(); // <<<< Add this line

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splashscreen(), // Your starting screen
    );
  }
}
