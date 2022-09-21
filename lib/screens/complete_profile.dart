// ignore_for_file: sized_box_for_whitespace

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
  File? imageFile;
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
                // Image.asset('images/logo_temp.jpg'),
                const Text(
                  'NIVIKA',
                  style: TextStyle(),
                ),
                const SizedBox(height: 10),
                fewSteps(),
                textField1('Enter Your Name', _nameController, false,
                    Icons.email_rounded, TextInputType.name),
                textField1('Enter Phone Number', _phoneController, true,
                    Icons.lock_rounded, TextInputType.phone),
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

  void selectImage(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      cropImage(pickedFile);
    }
  }

  void cropImage(XFile file) async {
    CroppedFile? croppedImage = await ImageCropper().cropImage(
      sourcePath: file.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      compressQuality: 25,
    );
    if (croppedImage != null) {
      imageFile = File(croppedImage.path);
    }
  }

  void checkNull() {
    String name = _nameController.text.trim();
    if (name.isEmpty || imageFile == null) {
      log('check null');
      showSimpleSnackbar(context, 'Incomplete Fields',
          'Please select a profile Picture and Enter your full name.');
    } else {
      log('uploading');
      upLoadData();
    }
  }

  void upLoadData() async {
    UIHelper.showLoadingDialog('Uploading Image...\nPlease wait', context);
    UploadTask uploadTask = FirebaseStorage.instance
        .ref('profilePictures')
        .child(widget.userModel.uid.toString())
        .putFile(imageFile!);
    String name = _nameController.text.trim();
    String phone = _phoneController.text.trim();

    widget.userModel.fullName = name;
    widget.userModel.phoneNos = phone;

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
