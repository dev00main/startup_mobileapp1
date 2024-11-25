import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:startup_mobileapp1/themes/app_colors.dart';
import 'package:startup_mobileapp1/screens/signup_screen.dart';
// ignore_for_file: unused_import

// ignore_for_file: use_build_context_synchronously

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const SignupScreen(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

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
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.code,
              size: 80,
              color: color1,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Code & Win',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: color1,
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
