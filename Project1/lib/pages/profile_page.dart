import 'package:flutter/material.dart';
import 'package:project1/components/toolbar.dart';
import 'package:project1/styles/app_colors.dart';
import 'package:project1/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))],
      ),
      body: Column(
        children: [
          Image.asset('assets/temp/profile.jpg', height: 90, width: 90),
          SizedBox(height: 24),
          Text('MS DHONI', style: AppText.header2),
          SizedBox(height: 12),
          Text('India', style: AppText.subtitle3),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('500', style: AppText.header2),
                  Text('Followers', style: AppText.subtitle3),
                ],
              ),
              Column(
                children: [
                  Text('500', style: AppText.header2),
                  Text('Posts', style: AppText.subtitle3),
                ],
              ),
              Column(
                children: [
                  Text('500', style: AppText.header2),
                  Text('Following', style: AppText.subtitle3),
                ],
              ),
            ],
          ),
          Divider(thickness: 2),
        ],
      ),
    );
  }
}
