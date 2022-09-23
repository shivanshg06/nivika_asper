// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';

// ignore: must_be_immutable
class button2 extends StatelessWidget {
  String? text;
  VoidCallback? callback;

  button2({Key? key, this.callback, this.text})
      : super(key: key); // Notice the variable type

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: callback,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              return accentColour;
            },
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class button3 extends StatelessWidget {
  String? text;
  VoidCallback? callback;
  BuildContext context;
  button3({Key? key, this.callback, this.text, required this.context})
      : super(key: key); // Notice the variable type

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.02,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: accentColour,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        onPressed: callback,
        style: ButtonStyle(
          enableFeedback: false,
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          // elevation: MaterialStateProperty.resolveWith((states) => 0),
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => primaryColour),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 15,
              color: accentColour,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
