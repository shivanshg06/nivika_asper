// ignore_for_file: sized_box_for_whitespace, unused_local_variable, unused_import

import 'dart:developer';
import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';
import 'package:nivika_asper/screens/dashboard.dart';
import 'package:nivika_asper/utils/ui_helper.dart';
import 'package:nivika_asper/widgets/buttons.dart';
import 'package:nivika_asper/widgets/textfields.dart';

class CompleteProfile extends StatefulWidget {
  final UserModel userModel;
  final User firebaseUser1;
  const CompleteProfile(
      {Key? key, required this.userModel, required this.firebaseUser1})
      : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.10, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('images/logo_temp.png'),
                const Text(
                  'NIVIKA',
                  style: TextStyle(),
                ),
                const SizedBox(height: 10),
                fewSteps(),
                textField1('Enter Your Name', _nameController, false,
                    Icons.person_rounded, TextInputType.name),
                textField1('Enter Phone Number', _phoneController, false,
                    Icons.phone_rounded, TextInputType.phone),
                textField1('Enter Your Address', _addressController, false,
                    Icons.location_on_rounded, TextInputType.text),
                const SizedBox(height: 10),
                button2(callback: upLoadData, text: 'Set Data'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row fewSteps() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "A few more steps! To your",
          style: TextStyle(color: accentColour),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          "NIVIKA",
          style: TextStyle(
            color: accentColour,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          "journey.",
          style: TextStyle(color: accentColour),
        ),
      ],
    );
  }

  void upLoadData() async {
    UIHelper.showLoadingDialog('Uploading Image...\nPlease wait', context);
    String name = _nameController.text.trim();
    String phone = _phoneController.text.trim();
    String address = _addressController.text.trim();

    widget.userModel.fullName = name;
    widget.userModel.phoneNos = phone;
    widget.userModel.address = address;

    await FirebaseFirestore.instance
        .collection('users')
        .doc(widget.userModel.uid)
        .set(widget.userModel.toMap())
        .then((value) {
      log('data uploaded');
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => DashBoard(
            firebaseUser: widget.firebaseUser1,
            userModel: widget.userModel,
          ),
        ),
      );
    });
  }

  void showSimpleSnackbar(BuildContext context, String title, String message) {
    Flushbar(
      duration: const Duration(seconds: 3),
      title: title,
      message: message,
      titleColor: primaryColour,
      messageColor: primaryColour,
      backgroundColor: Colors.redAccent,
    ).show(context);
  }
}
