import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:startup_mobileapp1/widgets/button.dart';
import 'package:startup_mobileapp1/themes/app_colors.dart';
import 'package:startup_mobileapp1/screens/home_screen.dart';
import 'package:startup_mobileapp1/widgets/bottomnavbar.dart';
import 'package:startup_mobileapp1/screens/auth_service.dart';
import 'package:startup_mobileapp1/screens/signup_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:startup_mobileapp1/widgets/login_methods_icon.dart';
// ignore_for_file: unused_import

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = AuthService();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Code & Win",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: color3)),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Welcome Back",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Let's get started by filling out the form below",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                controller: _email,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: color2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: color1, width: 2),
                    ),
                    filled: true,
                    // hintText: 'Ali Alayan',
                    hintStyle: TextStyle(color: color2),
                    focusColor: color1,
                    fillColor: color1,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    label: Text(
                      'Email',
                      style: TextStyle(color: color2),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: color2),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
              const SizedBox(height: 20),
              TextField(
                style: TextStyle(color: Colors.white),
                controller: _password,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: color2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: color1, width: 2),
                    ),
                    filled: true,
                    // hintText: 'Ali Alayan',
                    hintStyle: TextStyle(color: color2),
                    focusColor: color1,
                    fillColor: color1,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    label: Text(
                      'Password',
                      style: TextStyle(color: color2),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: color2),
                      borderRadius: BorderRadius.circular(10.0),
                    )),
              ),
              const SizedBox(height: 45),
              CustomButton(
                label: "Login",
                onPressed: _login,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: color2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: color2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginMethodsIcon(
                      imagePath:
                          '/Users/alialayan/flutter-projects/startup_mobileapp1/lib/assets/icons/apple-logo.png'),
                  const SizedBox(width: 15),
                  LoginMethodsIcon(
                      imagePath:
                          '/Users/alialayan/flutter-projects/startup_mobileapp1/lib/assets/icons/github.png'),
                  const SizedBox(width: 15),
                  LoginMethodsIcon(
                      imagePath:
                          '/Users/alialayan/flutter-projects/startup_mobileapp1/lib/assets/icons/search.png'),
                ],
              ),
              const SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () => goToSignup(context),
                  child: const Text("Signup", style: TextStyle(color: color2)),
                )
              ]),
              const SizedBox(height: 30),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }

  goToSignup(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignupScreen()),
      );

  goToHome(BuildContext context) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavBar()),
      );

  _login() async {
    final user =
        await _auth.loginUserWithEmailAndPassword(_email.text, _password.text);

    if (user != null) {
      log("User Logged In");
      // ignore: use_build_context_synchronously
      goToHome(context);
    }
  }
}
