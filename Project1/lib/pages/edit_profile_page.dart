import 'package:flutter/material.dart';
import 'package:project1/components/app_text_field.dart';
import 'package:project1/components/toolbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Edit Profile'),
      body: Column(
        children: [
          AppTextField(hint: 'First name'),
          AppTextField(hint: 'Last name'),
          AppTextField(hint: 'Phone no.'),
          AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}
