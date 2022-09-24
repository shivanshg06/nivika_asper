// ignore_for_file: use_build_context_synchronously, sized_box_for_whitespace, prefer_const_constructors

import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';
import 'package:nivika_asper/screens/complete_profile.dart';
import 'package:nivika_asper/screens/signin_screen.dart';
import 'package:nivika_asper/widgets/buttons.dart';
import 'package:nivika_asper/widgets/textfields.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _pass2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('images/logo_temp.png'),
                textField1('Enter Email', _emailController, false,
                    Icons.email_rounded, TextInputType.emailAddress),
                textField1('Enter Password', _passController, true,
                    Icons.lock_rounded, TextInputType.visiblePassword),
                textField1('Confirm Password', _pass2Controller, true,
                    Icons.lock_rounded, TextInputType.visiblePassword),
                const SizedBox(height: 15),
                button2(callback: buttonFunc, text: 'Sign Up'),
                const SizedBox(height: 15),
                signUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
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
                builder: (context) => const SignInScreen(),
              ),
            );
          },
          child: const Text(
            "Sign In",
            style: TextStyle(
              color: accentColour,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
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

  buttonFunc() {
    String email = _emailController.text.trim();
    String pass = _pass2Controller.text.trim();
    FocusManager.instance.primaryFocus?.unfocus();
    if (!(email.contains('@')) || (!email.contains('.com'))) {
      showSimpleSnackbar(
        context,
        'Check Input',
        'Improper Email Provided',
      );
    } else if (_passController.text.isEmpty || _pass2Controller.text.isEmpty) {
      showSimpleSnackbar(
        context,
        'Enter Password',
        'Enter Password to proceed',
      );
    } else if (_pass2Controller.text.trim() != _passController.text.trim()) {
      showSimpleSnackbar(
        context,
        'Check Input',
        'Passwords do not match.',
      );
    } else if (pass.length < 8) {
      showSimpleSnackbar(
        context,
        'Password Error',
        'Password should be more than 8 characters.',
      );
    } else {
      signUp(email, pass);
    }
  }

  void signUp(String email, String pass) async {
    UserCredential? credential;
    // UIHelper.showLoadingDialog('Signing you up....', context);
    try {
      credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
      log('msg1');
    } on FirebaseAuthException catch (error) {
      log('err1');
      log('$error');
      Navigator.pop(context);
      if (error.code == 'email-already-in-use') {
        log(error.code);
        showSimpleSnackbar(
          context,
          'Account already exists',
          'This email is already linked with another account',
        );
      } else {
        showSimpleSnackbar(
          context,
          'Some error has eccured',
          'Try again after some time',
        );
      }
    }
    log('msg2');
    if (credential != null) {
      String uid = credential.user!.uid;
      UserModel newUser = UserModel(
        uid: uid,
        email: email,
        address: '',
        cart: [],
        fullName: '',
        phoneNos: '',
        wishlist: [],
        dev: false,
      );
      log('$newUser');
      await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .set(newUser.toMap())
          .then(
        (value) {
          log('msg3');
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CompleteProfile(
                userModel: newUser,
                firebaseUser: credential!.user!,
              ),
            ),
          );
        },
      );
    }
  }
}
