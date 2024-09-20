import 'package:echochat/app/app_images.dart';
import 'package:echochat/app/app_strings.dart';
import 'package:echochat/route/route_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, RouteName.loginScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(AppImages.googleIcon),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(AppStrings.madeByVinayWith),
            ),
          )
        ],
      ),
    );
  }
}
