// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';
import 'package:nivika_asper/widgets/label.dart';

class OptionsScreen extends StatefulWidget {
  OptionsScreen(
      {super.key, required this.firebaseUser, required this.userModel});
  UserModel userModel;
  User firebaseUser;

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Nivika',
          style: TextStyle(
            fontSize: 30,
            color: accentColour,
            fontFamily: 'Samarkand',
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InformtionLabel1(
              context: context,
              title: 'Order Handicrafts',
              iconData: Icons.abc,
              callback: handicrafts,
              extraInfo: '',
            )
          ],
        ),
      ),
    );
  }

  void handicrafts() {}
}
