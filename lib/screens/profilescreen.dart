// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/main.dart';
import 'package:nivika_asper/models/user.dart';
import 'package:nivika_asper/screens/become_seller.dart';
import 'package:nivika_asper/utils/ui_helper.dart';
import 'package:nivika_asper/widgets/buttons.dart';
import 'package:nivika_asper/widgets/label.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen(
      {Key? key, required this.userModel, required this.firebaseUser})
      : super(key: key);
  final UserModel userModel;
  final User firebaseUser;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Text(
                    'Hello, ',
                    style: TextStyle(
                      color: accentColour,
                      fontSize: 25,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    widget.userModel.fullName!.toUpperCase(),
                    style: TextStyle(
                      color: accentColour,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  button3(
                    context: context,
                    text: 'Your Orders',
                    callback: ordersFunc,
                  ),
                  button3(
                    context: context,
                    text: 'Buy Again',
                    callback: buyAgainFunc,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InformtionLabel1(
              context: context,
              title: 'Your Account',
              iconData: Icons.person,
              callback: accountsFunc,
            ),
            const SizedBox(height: 20),
            InformtionLabel1(
              context: context,
              title: 'Your Wish List',
              iconData: Icons.favorite_border,
              callback: wishlistFunc,
            ),
            const SizedBox(height: 20),
            InformtionLabel1(
              context: context,
              title: 'Your Address',
              iconData: Icons.location_on,
              callback: wishlistFunc,
            ),
            const SizedBox(height: 20),
            button2(
              callback: sellerFunc,
              text: 'Become A Seller',
            ),
            const SizedBox(height: 10),
            button2(
              callback: signOut,
              text: 'Sign Out',
            ),
          ],
        ),
      ),
    );
  }

  void signOut() async {
    await FirebaseAuth.instance.signOut().then((value) {
      Navigator.popUntil(context, (route) => route.isFirst);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const MyApp();
      }));
    });
  }

  void wishlistFunc() {}

  void ordersFunc() {}

  void buyAgainFunc() {}

  void accountsFunc() {}

  void sellerFunc() {
    Navigator.popUntil(context, (route) => route.isFirst);
    UIHelper.confirmDialog(
        'Become a Seller?', 'description', context);
  }
}


/*
Navigator.pushReplacement(
        context, MaterialPageRoute(builder: ((context) => BecomeSeller())));
        */