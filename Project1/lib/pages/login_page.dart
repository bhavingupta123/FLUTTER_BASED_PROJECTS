import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/config/app_routes.dart';
import 'package:project1/config/app_strings.dart';
import 'package:project1/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  AppStrings.helloWelcome,
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(AppStrings.loginToContinue, style: TextStyle(color: Colors.white)),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppStrings.username,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppStrings.password,
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: Text(AppStrings.forgotPassword),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                    },
                    child: Text(AppStrings.login),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ),
                Spacer(),
                Text(AppStrings.orSignInWith, style: TextStyle(color: Colors.white)),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/google.png', width: 20, height: 20),
                      SizedBox(width: 10),
                      Text(AppStrings.loginWithGoogle),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/fb.jpg', width: 20, height: 20),
                      SizedBox(width: 10),
                      Text(AppStrings.loginWithFacebook),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Dont have an account ?", style: TextStyle(color: Colors.white)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.signup,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      style: TextButton.styleFrom(foregroundColor: Colors.amber),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// https://youtu.be/OO_-MbnXQzY?t=9000
