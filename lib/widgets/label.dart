// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';

class InformtionLabel1 extends StatefulWidget {
  InformtionLabel1(
      {super.key,
      required this.context,
      required this.title,
      required this.iconData,
      required this.callback,
      required this.extraInfo});
  BuildContext context;
  String title;
  IconData iconData;
  VoidCallback callback;
  String extraInfo;
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
        height: 120,
        decoration: BoxDecoration(
          color: primaryColour,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: accentColour),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: accentColour,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    widget.extraInfo,
                    style: TextStyle(
                        // fontSize: 5,
                        ),
                  ),
                ],
              ),
              Icon(
                widget.iconData,
                color: accentColour,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InformtionLabel2 extends StatefulWidget {
  InformtionLabel2(
      {super.key,
      required this.context,
      required this.title,
      required this.iconData,
      required this.callback,
      required this.extraInfo});
  BuildContext context;
  String title;
  IconData iconData;
  VoidCallback callback;
  String extraInfo;
  @override
  _InformtionLabel2State createState() => _InformtionLabel2State();
}

class _InformtionLabel2State extends State<InformtionLabel2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callback,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
          color: primaryColour,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: accentColour),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: accentColour,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: Text(
                      widget.extraInfo,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Icon(
                widget.iconData,
                color: accentColour,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
