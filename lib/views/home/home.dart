// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Text('Drawer Header', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Item 1'),
            ),
            ListTile(
              title: Text('Item 2'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 43, 126, 46),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
                const SizedBox(width: 50),
                const Text(
                  'CarePlus',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 250,),
                Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white,
             borderRadius:  BorderRadius.circular(30)),
             child:
              Padding(
                padding: const EdgeInsets.only(left: 20,),
                child: Text("Karachi",style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
                ),
                SizedBox(width: 20,),
                Icon(Icons.search,color: Colors.white,size:30,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
