import 'package:flutter/material.dart';
import 'package:project1/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

//https://www.youtube.com/watch?v=OO_-MbnXQzY CONT 1HR
