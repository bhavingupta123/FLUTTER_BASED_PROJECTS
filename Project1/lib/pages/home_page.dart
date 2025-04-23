import 'package:flutter/material.dart';
import 'package:project1/components/post_item.dart';
import 'package:project1/styles/app_colors.dart';
import 'package:project1/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
      appBar: AppBar(
        title: Text('5 minutes flutter', style: TextStyle(color: Colors.white)),
        actions: [Icon(Icons.location_on_outlined, color: Colors.white)],
        centerTitle: false,
        backgroundColor: AppColors.background,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: users[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 24);
        },
        itemCount: users.length,
      ),
    );
  }

  List<String> mockUserFromServer() {
    for (var i = 0; i < 200; ++i) {
      users.add('User number $i');
    }
    return users;
  }
}

//https://youtu.be/OO_-MbnXQzY?t=12514
