import 'package:project1/pages/edit_profile_page.dart';
import 'package:project1/pages/home_page.dart';
import 'package:project1/pages/login_page.dart';
import 'package:project1/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit_profile': (context) => EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
  static const user = '/user';
}
