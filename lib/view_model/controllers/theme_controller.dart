import 'package:echochat/view_model/services/theme_service.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  bool _isDarkMode = false;
  bool get isDarkMode=>_isDarkMode;
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    Get.changeTheme(isDarkMode ? ThemeService.darkTheme : ThemeService.lightTheme);
    update();
  }
}
