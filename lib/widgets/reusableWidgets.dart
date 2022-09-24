// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

ListTile ReusableListTile(
    {Icon? listIcon, required Widget? title, Function()? onTap, Widget? body}) {
  return ListTile(
    leading: listIcon,
    title: title,
    onTap: onTap,
    trailing: body,
  );
}

Widget ListCard({required Card child, required Function()? onTap}) {
  return ReusableListTile(title: child, onTap: onTap);
}
