import 'package:get/get_state_manager/get_state_manager.dart';


class ThemeController extends GetxController {
  bool _isDarkMode = true;
  bool get isDarkMode=>_isDarkMode;
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    update();
  }
}
