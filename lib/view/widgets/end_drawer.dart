import 'package:echochat/app/app_colors.dart';
import 'package:echochat/view_model/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildEndDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: AppColors.green,
          ),
          child: Text(
            'echochat'.tr,
            style: TextStyle(color: AppColors.white, fontSize: 24),
          ),
        ),
        GetBuilder<ThemeController>(
          builder: (controller) {
            return ListTile(
              leading: Icon(Icons.brightness_6),
              title: Text('switch_theme'.tr),
              trailing: Switch(
                activeColor: AppColors.green,
                value: controller.isDarkMode,
                onChanged: (value) {
                  controller.toggleTheme();
                },
              ),
            );
          },
        ),
      ],
    ),
  );
}
