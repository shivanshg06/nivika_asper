// ignore_for_file: prefer_const_constructors

import 'dart:developer';

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
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
                    widget.userModel.fullName.split(' ').first.toUpperCase(),
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
            const SizedBox(height: 10),
            InformtionLabel1(
              context: context,
              title: 'Your Orders',
              iconData: Icons.join_left_outlined,
              callback: ordersFunc,
              extraInfo: 'Click here to View Your Orders.',
            ),
            const SizedBox(height: 10),
            InformtionLabel1(
              context: context,
              title: 'Buy Again',
              iconData: Icons.arrow_right_alt,
              callback: buyAgainFunc,
              extraInfo: 'Liked Our Products? \nBuy Them Again',
            ),
            const SizedBox(height: 10),
            InformtionLabel1(
              context: context,
              title: 'Your Account',
              iconData: Icons.person_outline_outlined,
              callback: accountsFunc,
              extraInfo: 'View Your Account Deatils \nClick Here',
            ),
            const SizedBox(height: 10),
            InformtionLabel1(
              context: context,
              title: 'Your Wish List',
              iconData: Icons.favorite_border,
              callback: wishlistFunc,
              extraInfo: 'Make Your Wishes Come True,\nClick Here To View.',
            ),
            const SizedBox(height: 10),
            InformtionLabel2(
              context: context,
              title: 'Your Address',
              iconData: Icons.location_on,
              callback: addressFunc,
              extraInfo: widget.userModel.address,
            ),
            const SizedBox(height: 10),
            button2(
              callback: sellerFunc,
              text: 'Become A Seller',
            ),
            const SizedBox(height: 10),
            button2(
              callback: signOut,
              text: 'Sign Out',
            ),
            const SizedBox(height: 10),
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

  void addressFunc() {}

  void sellerFunc() {
    Navigator.popUntil(context, (route) => route.isFirst);
    log('${MediaQuery.of(context).size.width}');
    UIHelper.confirmDialog(
        'Become a Seller?',
        'description',
        context,
        BecomeSeller(
            userModel: widget.userModel, firebaseUser: widget.firebaseUser));
  }
}
