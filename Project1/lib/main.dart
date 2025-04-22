import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/login_page.dart';
import 'package:project1/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        textTheme: GoogleFonts.urbanistTextTheme(),
        scaffoldBackgroundColor: AppColors.background,
      ),
    );
  }
}

//https://youtu.be/OO_-MbnXQzY?t=6172
