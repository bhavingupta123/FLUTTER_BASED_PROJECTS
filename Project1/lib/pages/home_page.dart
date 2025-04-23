import 'package:flutter/material.dart';
import 'package:project1/components/post_item.dart';
import 'package:project1/styles/app_colors.dart';
import 'package:project1/styles/app_text.dart';

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

  List<Widget> mockUserFromServer() {
    List<Widget> users = [];

    for (var i = 0; i < 200; ++i) {
      users.add(PostItem());
    }
    return users;
  }
}

//https://youtu.be/OO_-MbnXQzY?t=11833
