import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/main.dart';
import 'package:nivika_asper/widgets/buttons.dart';
import 'package:nivika_asper/widgets/label.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                button3(
                  context: context,
                  text: 'Your Orders',
                  callback: wishlistFunc,
                ),
                button3(
                  context: context,
                  text: 'Your Wish List',
                  callback: ordersFunc,
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
                  text: 'Buy Again',
                  callback: buyAgainFunc,
                ),
                button3(
                  context: context,
                  text: 'Your Account',
                  callback: accountsFunc,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          InformtionLabel1(context: context),
          const SizedBox(height: 20),
          InformtionLabel1(context: context),
          const SizedBox(height: 20),
          button2(
            callback: signOut,
            text: 'Sign Out',
          ),
        ],
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
}
