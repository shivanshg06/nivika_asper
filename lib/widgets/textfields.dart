import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/widgets/styles.dart';

textField1(String display, TextEditingController mainController,
    bool isPassword, IconData icondata, TextInputType keyboard) {
  return Container(
    margin: const EdgeInsets.symmetric(
      vertical: 10,
    ),
    child: TextField(
      keyboardType: keyboard,
      controller: mainController,
      obscureText: isPassword,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      decoration: InputDecoration(
        label: textFieldStyle1(display, icondata, accentColour),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: accentColour,
          ),
        ),
      ),
    ),
  );
}
