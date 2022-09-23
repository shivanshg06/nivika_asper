import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';

class BecomeSeller extends StatefulWidget {
  const BecomeSeller(
      {super.key, required this.userModel, required this.firebaseUser});
  final UserModel userModel;
  final User firebaseUser;
  @override
  State<BecomeSeller> createState() => _BecomeSellerState();
}

class _BecomeSellerState extends State<BecomeSeller> {
  bool agreement = false;
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: agreement,
                        onChanged: ((value) {
                          agreement = !agreement;
                        }),
                      ),
                      Text(
                        'By clicking you agree to our \nterms and conditions.',
                        softWrap: true,
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
