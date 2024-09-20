import 'package:echochat/view_model/services/shared_prefrences_service.dart';
import 'package:flutter/material.dart';


class SessionService {
  var sp = SharedPrefrencesService();
  void checkAuthentication(BuildContext context) {
  //   sp.getLoginData().then((value) {
  //     if (value.token == "null" || value.token == "") {
  //       Navigator.pushNamedAndRemoveUntil(
  //         Get.context!,
  //         RouteName.loginScreen,
  //             (route) => false,
  //       );
  //     } else {
  //       Navigator.pushNamedAndRemoveUntil(
  //         Get.context!,
  //         RouteName.homeScreen,
  //             (route) => false,
  //       );
  //     }
  //   }).onError((error, stackTrace) {
  //     Utils.toastMessage(error.toString());
  //   });
  }
}
