import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';
import 'package:nivika_asper/screens/cartscreen.dart';
import 'package:nivika_asper/screens/home_screen.dart';
import 'package:nivika_asper/screens/profilescreen.dart';
import 'package:nivika_asper/screens/settings_screen.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key, required this.userModel, required this.firebaseUser})
      : super(key: key);
  UserModel userModel;
  User firebaseUser;
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int pageIndex = 0;
  late List<StatefulWidget> navPages = [
    const HomeScreen(),
    ProfileScreen(
      firebaseUser: widget.firebaseUser,
      userModel: widget.userModel,
    ),
    const CartScreen(),
    const SettingsScreen(),
  ];

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
      body: navPages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: primaryColour,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: const Icon(
                Icons.home_outlined,
                size: 35,
              ),
              color: pageIndex == 0 ? accentColour : black,
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: const Icon(
                Icons.person_outlined,
                size: 35,
              ),
              color: pageIndex == 1 ? accentColour : black,
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 35,
              ),
              color: pageIndex == 2 ? accentColour : black,
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: const Icon(
                Icons.menu_outlined,
                size: 35,
              ),
              color: pageIndex == 3 ? accentColour : black,
            ),
          ],
        ),
      ),
    );
  }
}
