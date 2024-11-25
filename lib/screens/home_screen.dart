import 'package:flutter/material.dart';
import 'package:startup_mobileapp1/themes/app_colors.dart';
import 'package:startup_mobileapp1/screens/profile_screen.dart';
import 'package:startup_mobileapp1/screens/challenge_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// ignore_for_file: unused_import

// ignore_for_file: prefer_final_fields

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF00A2B4),
              Color(0xFF00464E),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  'LeaderBoard',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 425,
              width: 300,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
