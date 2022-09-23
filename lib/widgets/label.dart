// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';

class InformtionLabel1 extends StatefulWidget {
  InformtionLabel1(
      {super.key,
      required this.context,
      required this.title,
      required this.iconData,
      required this.callback});
  BuildContext context;
  String title;
  IconData iconData;
  VoidCallback callback;
  @override
  State<InformtionLabel1> createState() => _InformtionLabel1State();
}

class _InformtionLabel1State extends State<InformtionLabel1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callback,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          color: primaryColour,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: accentColour),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset.fromDirection(0.3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontFamily: 'Samarkand',
                      color: accentColour,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              Icon(
                widget.iconData,
                color: accentColour,
                size: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
