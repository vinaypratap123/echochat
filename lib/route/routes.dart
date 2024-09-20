import 'package:echochat/app/app_strings.dart';
import 'package:echochat/route/route_name.dart';
import 'package:echochat/view/screens/home_screen.dart';
import 'package:echochat/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
// ------------------------- SPLASH SCREEN ROUTE -------------------------
      case RouteName.splashScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      // ------------------------- HOME SCREEN ROUTE -------------------------
      case RouteName.homeScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );
// ------------------------- DEFAULT ROUTE -------------------------
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text(AppStrings.invalidRoute),
              ),
            );
          },
        );
    }
  }
}
