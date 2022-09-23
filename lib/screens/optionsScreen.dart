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
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.1, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                child: Text(
                  'Choose Your Service',
                  style: TextStyle(
                    fontSize: 30,
                    color: accentColour,
                  ),
                ),
              ),
              Label2(
                img: 'images/h.png',
                context: context,
                text1: 'Start Ordering\nHandicrafts',
                text2: 'Order Now!!',
                real: true,
              ),
              Label2(
                img: 'images/h.png',
                context: context,
                text1: 'Food Service',
                text2: 'Coming Soon!!',
                real: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Label2 extends StatefulWidget {
  Label2(
      {super.key,
      required this.img,
      required this.context,
      required this.text1,
      required this.text2,
      required this.real});
  String img;
  BuildContext context;
  String text1;
  String text2;
  bool real;
  @override
  State<Label2> createState() => _Label2State();
}

class _Label2State extends State<Label2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: primaryColour,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: widget.real ? accentColour : accentColour.withOpacity(0.6),
            width: 2,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.text1,
                    style: TextStyle(
                      fontSize: 20,
                      color: widget.real
                          ? accentColour
                          : accentColour.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    widget.text2,
                    style: TextStyle(
                      fontSize: 20,
                      color: widget.real
                          ? accentColour
                          : accentColour.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  color: primaryColour,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      'images/h.png',
                    ),
                    opacity: widget.real ? 1.0 : 0.6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
