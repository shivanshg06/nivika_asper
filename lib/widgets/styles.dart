import 'package:flutter/material.dart';

textFieldStyle1(String text, IconData iconData, Color colour) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        iconData,
        color: colour,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        text,
        style: TextStyle(
          color: colour,
        ),
      ),
    ],
  );
}