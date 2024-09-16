import 'package:echochat/app/app_colors.dart';
import 'package:flutter/material.dart';

class ThemeService {
  static final lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.green,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.green,
      titleTextStyle: TextStyle(color: AppColors.white, fontSize: 20),
    ),
    textTheme:  TextTheme(
      bodyLarge:  const TextStyle(color: AppColors.black),
      bodyMedium: TextStyle(color: AppColors.grey800),
    ),
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.green),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    primaryColor: AppColors.green,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.green,
      titleTextStyle: TextStyle(color: AppColors.black, fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(color: AppColors.white),
      bodyMedium: TextStyle(color: AppColors.grey400),
    ),
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.green),
  );
}
