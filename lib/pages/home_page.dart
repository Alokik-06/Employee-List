// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/pages/add_employee.dart';
import 'package:task_1/pages/list_employee.dart';
import 'package:task_1/pages/login_sr.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          // Logout Icon Button....
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            icon: Icon(
              Icons.logout_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListEmployeePage(),

      // Floating action button for add new employee...
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 40,
        ),
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => AddEmployeePage(),
            ),
          );
        },
      ),
    );
  }
}
