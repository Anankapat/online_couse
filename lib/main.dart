import 'package:flutter/material.dart';
import 'package:online_couse/screens/home/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Course',
      theme: ThemeData(
        primaryColor: Colors.cyan
      ),
      home: HomePage(),
    );
  }
}

