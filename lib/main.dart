// ignore_for_file: depend_on_referenced_packages, avoid_unnecessary_containers, await_only_futures, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';
import 'package:nivika_asper/screens/dashboard.dart';
import 'package:nivika_asper/screens/onboarding.dart';
import 'package:nivika_asper/screens/optionsScreen.dart';
import 'package:nivika_asper/screens/signin_screen.dart';
import 'package:nivika_asper/utils/firebase_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  User? currentUser = await FirebaseAuth.instance.currentUser;

  if (currentUser != null) {
    UserModel? thisUserModel =
        await FirebaseHelper.getUserModelById(currentUser.uid);
    if (thisUserModel != null) {
      runApp(MyAppLogged(firebaseUser: currentUser, userModel: thisUserModel));
    } else {
      runApp(const MyApp());
    }
  } else {
    runApp(const MyApp());
  }
}

class MyAppLogged extends StatelessWidget {
  final User? firebaseUser;
  final UserModel? userModel;

  const MyAppLogged(
      {Key? key, required this.firebaseUser, required this.userModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColour),
      ),
      debugShowCheckedModeBanner: false,
      home: OptionsScreen(userModel: userModel!, firebaseUser: firebaseUser!),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColour),
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
