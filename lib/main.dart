import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:startup_mobileapp1/firebase_options.dart';
import 'package:startup_mobileapp1/screens/home_screen.dart';
import 'package:startup_mobileapp1/widgets/bottomnavbar.dart';
import 'package:startup_mobileapp1/screens/signup_screen.dart';
import 'package:startup_mobileapp1/screens/splash_screen.dart';
// ignore_for_file: unused_import

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code & Win',
      debugShowCheckedModeBanner: false,
      home: //SignupScreen(),
          SplashScreen(),
      // HomeScreen(),
      // BottomNavBar(),
    );
  }
}
