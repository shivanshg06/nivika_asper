// ignore_for_file: prefer_const_constructors, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen(
      {Key? key, required User firebaseUser, required UserModel userModel})
      : super(key: key);

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
    );
  }
}
