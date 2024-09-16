import 'package:echochat/l10n/l10n.dart';
import 'package:echochat/route/route_name.dart';
import 'package:echochat/route/routes.dart';
import 'package:echochat/view_model/controllers/theme_controller.dart';
import 'package:echochat/view_model/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'echochat'.tr,
      translations: L10n(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeService.lightTheme,
      darkTheme: ThemeService.darkTheme,
      themeMode: Get.find<ThemeController>().isDarkMode ? ThemeMode.dark : ThemeMode.light, // Use the controller's value
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
