import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/widgets/buttons.dart';

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

  static void confirmDialog(
      String title, String description, BuildContext context) {
    AlertDialog confirmDialog = AlertDialog(
      backgroundColor: primaryColour,
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: accentColour,
                  fontSize: 20,
                ),
              ),
              Text(
                description,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  button3(
                    context: context,
                    text: '',
                    callback: (() {}),
                  ),
                  button3(
                    context: context,
                    text: '',
                    callback: (() {}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      elevation: 0,
    );

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: ((context) => confirmDialog),
      barrierColor: Colors.black.withOpacity(0.1),
    );
  }
}
