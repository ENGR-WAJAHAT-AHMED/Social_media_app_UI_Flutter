import 'package:demo_practice/pages/edit_profile_page.dart';
import 'package:demo_practice/pages/home_page.dart';
import 'package:demo_practice/pages/main_page.dart';
import 'package:demo_practice/pages/nearby_page.dart';
import 'package:demo_practice/pages/test_page.dart';
import 'package:demo_practice/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:demo_practice/pages/login_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.dark
      ),
      title: "MY APP",
      // home: TestPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => Loginpage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
        '/editprofile': (context) => EditPage(),
        '/nearby': (context) => NearByPage(),
      },
    );
  }
}
