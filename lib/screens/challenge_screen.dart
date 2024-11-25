import 'package:flutter/material.dart';
import 'package:startup_mobileapp1/themes/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// ignore_for_file: unused_import

// ignore_for_file: prefer_final_fields

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
      ),
    );
  }
}
