import 'package:flutter/material.dart';
import 'package:project1/components/post_item.dart';
import 'package:project1/components/toolbar.dart';
import 'package:project1/styles/app_colors.dart';
import 'package:project1/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
      appBar: Toolbar(
        title: '5 minutes Flutter',
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
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

// https://youtu.be/OO_-MbnXQzY?t=13874
