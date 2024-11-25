import 'package:flutter/material.dart';
import 'package:startup_mobileapp1/themes/app_colors.dart';

class LoginMethodsIcon extends StatelessWidget {
  final String imagePath;
  const LoginMethodsIcon({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color1,
          border: Border.all(color: color1),
          borderRadius: BorderRadius.circular(16)),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
