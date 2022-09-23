// ignore_for_file: use_build_context_synchronously, sized_box_for_whitespace, unused_local_variable

import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';
import 'package:nivika_asper/screens/dashboard.dart';
import 'package:nivika_asper/screens/signupscreen.dart';
import 'package:nivika_asper/utils/ui_helper.dart';
import 'package:nivika_asper/widgets/buttons.dart';
import 'package:nivika_asper/widgets/textfields.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.05, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('images/logo_temp.png'),
                const SizedBox(height: 30),
                textField1('Enter Email', _emailController, false,
                    Icons.email_rounded, TextInputType.emailAddress),
                textField1('Enter Password', _passController, true,
                    Icons.lock_rounded, TextInputType.visiblePassword),
                const SizedBox(height: 15),
                button2(callback: buttonFunc, text: 'Sign In'),
                const SizedBox(height: 10),
                forgotPasswordOption(),
                const SizedBox(height: 10),
                signUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buttonFunc() {
    FocusManager.instance.primaryFocus?.unfocus();
    String email = _emailController.text.trim();
    String pass = _passController.text.trim();
    if (!(email.contains('@')) || (!email.contains('.com'))) {
      showSimpleSnackbar(
        context,
        'Check Input',
        'Improper Email Provided',
      );
    } else if (_passController.text.isEmpty) {
      showSimpleSnackbar(
        context,
        'Enter Password',
        'Enter Password to proceed',
      );
    } else if (pass.length < 8) {
      showSimpleSnackbar(
        context,
        'Password Error',
        'Password should be more than 8 characters.',
      );
    } else {
      signIn(email, pass);
    }
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

  void signIn(String email, String pass) async {
    UserCredential? credential;
    User? firebaseUser1;
    // UIHelper.showLoadingDialog('signing you in...', context);
    try {
      credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
      log('SignIn');
    } on FirebaseAuthException catch (error) {
      log(error.code);
      Navigator.pop(context);
      if (error.code == 'wrong-password') {
        showSimpleSnackbar(
          context,
          'Incorrect Password',
          'Check your password and try again.',
        );
      } else if (error.code == 'user-not-found') {
        showSimpleSnackbar(context, 'Uer not found',
            'Check your email or\nClick on Sign Up to get started');
      } else {
        showSimpleSnackbar(
          context,
          'Some Problem Has Occured',
          'Try again after some time',
        );
      }
    }
    if (credential != null) {
      String uid = credential.user!.uid;

      log('false1');
      DocumentSnapshot userData =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      log(userData.toString());
      log('false2');
      UserModel userModel =
          UserModel.fromMap(userData.data() as Map<String, dynamic>);
      log('Success');
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) {
            log('$credential');
            return DashBoard(
              userModel: userModel,
              firebaseUser: credential!.user!,
            );
          }),
        ),
      );
    }
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(color: accentColour),
        ),
        const SizedBox(
          width: 2,
        ),
        GestureDetector(
          onTap: () {
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpScreen(),
              ),
            );
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: accentColour,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Row forgotPasswordOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Forgot Password?",
          style: TextStyle(color: accentColour),
        ),
        const SizedBox(
          width: 2,
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Click Here",
            style: TextStyle(
              color: accentColour,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
