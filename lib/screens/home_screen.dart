// ignore_for_file: must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/models/user.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required this.firebaseUser, required this.userModel});
  UserModel userModel;
  User firebaseUser;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
