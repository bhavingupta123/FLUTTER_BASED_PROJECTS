import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/pages/home_page.dart';
import 'package:project1/pages/login_page.dart';
import 'package:project1/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.urbanistTextTheme(),
        scaffoldBackgroundColor: AppColors.background,
      ),
      initialRoute: '/',
      routes: {'/': (context) => LoginPage(), '/home': (context) => HomePage()},
    );
  }
}

//https://youtu.be/OO_-MbnXQzY?t=7941
