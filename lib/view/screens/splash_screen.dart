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
        Navigator.pushNamed(context, RouteName.homeScreen);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: const Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}
