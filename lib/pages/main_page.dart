import 'package:demo_practice/components/buttom_navigation_item.dart';
import 'package:demo_practice/pages/home_page.dart';
import 'package:demo_practice/pages/profile_page.dart';
import 'package:demo_practice/pages/test_page.dart';
import 'package:demo_practice/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndexxx = Menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndexxx.index],
      bottomNavigationBar: MyBottonNavigation(
        currentIndexxx: currentIndexxx,
        onTap: (value) {
          setState(() {
            currentIndexxx = value;
          });
        },
      ),
    );
  }

  final pages = [
    HomePage(),
    TestPage(),
    Center(
      child: Text(
        'ADD ITMES',
        style: TextStyle(
            color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'THIS IS MESSAGE2',
        style: TextStyle(
            color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      ),
    ),
    ProfilePage(),
  ];
}

enum Menus {
  home,
  favorite,
  add,
  messages,
  user,
}

class MyBottonNavigation extends StatelessWidget {
  final Menus currentIndexxx;
  final ValueChanged<Menus> onTap;

  const MyBottonNavigation(
      {Key? key, required this.currentIndexxx, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: BottomNavigationItem(
                          onPressed: () => onTap(Menus.home),
                          icon: 'assets/svg/ic_home.svg',
                          current: currentIndexxx,
                          name: Menus.home)),
                  Expanded(
                      child: BottomNavigationItem(
                          onPressed: () => onTap(Menus.favorite),
                          icon: 'assets/svg/ic_favorite.svg',
                          current: currentIndexxx,
                          name: Menus.favorite)),
                  Spacer(),
                  Expanded(
                      child: BottomNavigationItem(
                          onPressed: () => onTap(Menus.messages),
                          icon: 'assets/svg/ic_messages.svg',
                          current: currentIndexxx,
                          name: Menus.messages)),
                  Expanded(
                      child: BottomNavigationItem(
                          onPressed: () => onTap(Menus.user),
                          icon: 'assets/svg/ic_user.svg',
                          current: currentIndexxx,
                          name: Menus.user)),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.add),
              child: Container(
                width: 64,
                height: 64,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xff009DFF),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/svg/ic_add.svg',
                  color: currentIndexxx == Menus.add
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
