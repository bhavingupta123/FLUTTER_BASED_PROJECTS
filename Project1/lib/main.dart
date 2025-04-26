import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/config/app_routes.dart';
import 'package:project1/pages/edit_profile_page.dart';
import 'package:project1/pages/home_page.dart';
import 'package:project1/pages/login_page.dart';
import 'package:project1/pages/main_page.dart';
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
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}

//https://youtu.be/OO_-MbnXQzY?t=7941
