import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 68),
            Text(
              'Hello, Welcome back !',
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text('Login to Continue', style: TextStyle(color: Colors.white)),
            SizedBox(height: 60),
            TextField(
              decoration: InputDecoration(
                hintText: 'username',
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'password',
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
                child: Text('Forgot password'),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.yellow,
              ),
            ),
            SizedBox(height: 50),
            Text('Sign in with:', style: TextStyle(color: Colors.white)),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/google.png', width: 20, height: 20),
                  SizedBox(width: 10),
                  Text('Login with google'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/fb.jpg', width: 20, height: 20),
                  SizedBox(width: 10),
                  Text('Login with fb'),
                ],
              ),
            ),
            Row(
              children: [
                Text("Dont have an account ?", style: TextStyle(color: Colors.white)),
                TextButton(
                  onPressed: () {},
                  child: Text('Sign Up', style: TextStyle(decoration: TextDecoration.underline)),
                  style: TextButton.styleFrom(foregroundColor: Colors.amber),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
