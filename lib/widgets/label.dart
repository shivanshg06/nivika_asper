// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';

class InformtionLabel1 extends StatefulWidget {
  InformtionLabel1({super.key, required this.context});
  BuildContext context;
  @override
  State<InformtionLabel1> createState() => _InformtionLabel1State();
}

class _InformtionLabel1State extends State<InformtionLabel1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        color: primaryColour,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: accentColour),
      ),
      child: Column(),
    );
  }
}
