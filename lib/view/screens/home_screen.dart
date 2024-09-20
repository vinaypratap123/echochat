import 'package:echochat/app/app_images.dart';
import 'package:echochat/view/widgets/buttons/social_button.dart';
import 'package:echochat/view/widgets/end_drawer.dart';
import 'package:get/get.dart';
import 'package:echochat/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_common/get_reset.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildEndDrawer(),
      appBar: CustomAppBar(

        title: 'echochat'.tr,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        SocialButton(buttonName: "Login with Goolge", onTap: (){}, buttonIconPath: AppImages.googleIcon),
      ],),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add_outlined),),
    );
  }
}
