import 'package:flutter/material.dart';
import 'package:project1/pages/home_page.dart';
import 'package:project1/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final pages = [
    HomePage(),
    Center(child: Text('Fav', style: TextStyle(color: Colors.white))),
    Center(child: Text('Posts', style: TextStyle(color: Colors.white))),
    Center(child: Text('Messages', style: TextStyle(color: Colors.white))),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken_outlined), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add_sharp), label: 'Add Post'),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'User'),
        ],
        backgroundColor: Colors.amber,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }
}
