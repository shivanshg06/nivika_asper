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
      child: SizedBox(
        width: double.infinity,
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/* Container signInSignUpButton(
    BuildContext context, bool isLogin, Function? onTap()) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: onTap,
      child: Text(
        isLogin ? 'LOG IN!' : 'SIGN UP!',
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.yellow[900];
          }
          return Colors.yellow[300];
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    ),
  );
}
 */