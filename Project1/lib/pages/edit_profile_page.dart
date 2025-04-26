import 'package:flutter/material.dart';
import 'package:project1/components/app_text_field.dart';
import 'package:project1/components/toolbar.dart';
import 'package:project1/components/user_avatar.dart';
import 'package:project1/config/app_strings.dart';

enum Gender { none, male, female, other }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editProfile),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Stack(
              children: [
                UserAvatar(size: 120),
                Positioned(bottom: 0, right: 0, child: Icon(Icons.edit)),
              ],
            ),
            SizedBox(height: 50),
            AppTextField(hint: AppStrings.firstName),
            SizedBox(height: 16),
            AppTextField(hint: AppStrings.lastName),
            SizedBox(height: 16),
            AppTextField(hint: AppStrings.phoneNumber),
            SizedBox(height: 16),
            AppTextField(hint: AppStrings.location),
            SizedBox(height: 16),
            AppTextField(hint: AppStrings.birthday),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9).withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Column(
                children: [
                  Text('Gender', style: TextStyle(color: Colors.white)),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text('male'),
                          visualDensity: VisualDensity(
                            vertical: VisualDensity.minimumDensity,
                            horizontal: VisualDensity.maximumDensity,
                          ),
                          value: Gender.male,
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.male;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text('Female'),
                          visualDensity: VisualDensity(
                            vertical: VisualDensity.minimumDensity,
                            horizontal: VisualDensity.maximumDensity,
                          ),
                          contentPadding: EdgeInsets.zero,
                          value: Gender.female,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.female;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text('Other'),
                          visualDensity: VisualDensity(
                            vertical: VisualDensity.minimumDensity,
                            horizontal: VisualDensity.maximumDensity,
                          ),
                          contentPadding: EdgeInsets.zero,
                          value: Gender.other,
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.other;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
