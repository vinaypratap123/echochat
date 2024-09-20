import 'package:echochat/app/app_colors.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String buttonName;
  final String buttonIconPath;
  final VoidCallback onTap;
  const SocialButton(
      {super.key,
      required this.buttonName,
      required this.onTap,
      required this.buttonIconPath});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: width * 0.8,
        decoration: BoxDecoration(
          color: AppColors.green,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(buttonIconPath),
            Text(
              buttonName,
            ),
          ],
        ),
      ),
    );
  }
}
