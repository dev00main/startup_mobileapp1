import 'package:flutter/material.dart';
import 'package:startup_mobileapp1/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, this.onPressed});
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 280,
        height: 50,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                // side: BorderSide(width: 2),
              ),
              backgroundColor: color2,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 14,
              ),
            ),
            child: Text(
              label,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            )));
  }
}
