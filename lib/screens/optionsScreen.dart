// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({Key? key}) : super(key: key);

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NIVIKA',
          style: TextStyle(
            fontFamily: 'Samarkand',
          ),
        ),
      ),
    );
  }
}
