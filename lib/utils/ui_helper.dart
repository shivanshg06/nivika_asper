
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';

class UIHelper {
  static void showLoadingDialog(String title, BuildContext context) {
    AlertDialog loadingDialog = AlertDialog(
      backgroundColor: primaryColour,
      content: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(
              height: 25,
            ),
            Text(
              title,
              style: const TextStyle(
                color: accentColour,
              ),
            ),
          ],
        ),
      ),
      elevation: 0,
    );

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: ((context) => loadingDialog),
      barrierColor: Colors.transparent,
    );
  }
}
