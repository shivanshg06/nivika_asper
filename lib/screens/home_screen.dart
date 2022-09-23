import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
