import 'package:flutter/material.dart';
import 'package:project1/styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/temp/profile.jpg', width: 40, height: 40),
        SizedBox(width: 16),
        Text('SIMPLE NAME', style: AppText.subtitle3),
      ],
    );
  }
}
