import 'package:flutter/material.dart';
import 'package:project1/components/toolbar.dart';
import 'package:project1/components/user_avatar.dart';
import 'package:project1/config/app_routes.dart';
import 'package:project1/styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  break;
                default:
                  break;
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('Edit Profile'), value: ProfileMenu.edit),
                PopupMenuItem(child: Text('Logout'), value: ProfileMenu.logout),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          UserAvatar(size: 90),
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
