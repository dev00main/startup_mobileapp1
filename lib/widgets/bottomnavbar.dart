import 'package:flutter/material.dart';
import 'package:startup_mobileapp1/themes/app_colors.dart';
import 'package:startup_mobileapp1/screens/home_screen.dart';
import 'package:startup_mobileapp1/screens/profile_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:startup_mobileapp1/screens/challenge_screen.dart';
// ignore_for_file: non_constant_identifier_names

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Pages = [
    ProfileScreen(),
    HomeScreen(),
    ChallengeScreen(),
  ];
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: colorgrey,
        buttonBackgroundColor: color2,
        backgroundColor: color1,
        index: _selectedIndex,
        items: [
          Icon(
            Icons.man,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.bug_report_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Pages[_selectedIndex],
    );
  }
}
