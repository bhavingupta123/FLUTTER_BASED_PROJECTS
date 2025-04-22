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
      body: Column(children: []),
    );
  }
}
