import 'package:echochat/app/app_colors.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? leading;

  CustomAppBar({
    required this.title,
    this.centerTitle = false,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: AppColors.white, fontSize: 20),
      ),
      backgroundColor: AppColors.green,
      centerTitle: centerTitle,
      actions: actions,
      leading: leading,
      iconTheme: IconThemeData(color: AppColors.white),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
