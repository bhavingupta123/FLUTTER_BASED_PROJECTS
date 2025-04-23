import 'package:flutter/material.dart';
import 'package:project1/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5 minutes flutter', style: TextStyle(color: Colors.white)),
        actions: [Icon(Icons.location_on_outlined, color: Colors.white)],
        centerTitle: false,
        backgroundColor: AppColors.background,
      ),
      body: ListView(children: mockUserFromServer()),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset('assets/temp/profile.jpg', width: 40, height: 40),
        SizedBox(width: 16),
        Text('SIMPLE NAME', style: TextStyle(color: Colors.white)),
      ],
    );
  }

  List<Widget> mockUserFromServer() {
    List<Widget> users = [];

    for (var i = 0; i < 200; ++i) {
      users.add(_userItem());
    }
    return users;
  }
}
