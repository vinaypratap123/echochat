import 'package:echochat/app/app_images.dart';
import 'package:echochat/app/app_strings.dart';
import 'package:echochat/route/route_name.dart';
import 'package:echochat/view/widgets/buttons/social_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SocialButton(
                buttonName: 'login_with_goolge'.tr,
                onTap: () {},
                buttonIconPath: AppImages.googleIcon),
          ),
        ],
      ),
    );
  }
}
