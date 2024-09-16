import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:echochat/app/app_strings.dart';
import 'package:flutter/material.dart';

class Utils {
  static void fieldFocusChange(
    BuildContext context,
    FocusNode currentFocus,
    FocusNode nextFocus,
  ) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  // --------------------------- flushBarErrorMessage  ---------------------------
  static void flushBarMessage(
      BuildContext context, String message, Color color) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        flushbarPosition: FlushbarPosition.BOTTOM,
        margin: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
        borderRadius: BorderRadius.circular(10),
        positionOffset: 10,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
        message: message,
        backgroundColor: color,
      )..show(context),
    );
  }

  //  --------------------------- showAlertDialog  ---------------------------

  static void showAlertDialog(
    BuildContext context,
    String title,
    String content,
  ) {
    AlertDialog alertDialog = AlertDialog(
      elevation: 25,
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(AppStrings.ok),
        ),
      ],
    );
    showDialog(
      context: context,
      builder: (context) {
        return alertDialog;
      },
    );
  }
}
