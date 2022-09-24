// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/reusableWidgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                ExpansionTile(
                  leading: Icon(
                    Icons.translate,
                    size: 30,
                  ),
                  title: Text(
                    'Choose Language',
                    style: TextStyle(fontSize: 18),
                  ),
                  children: [
                    ReusableListTile(
                      title: Text(
                        'English',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    ReusableListTile(
                      title: Text(
                        'Hindi',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    ReusableListTile(
                      title: Text(
                        'Assamese',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    ReusableListTile(
                      title: Text(
                        'Bengali',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    ReusableListTile(
                      title: Text(
                        'Gujarati',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    ReusableListTile(
                      title: Text(
                        'Marathi',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    ReusableListTile(
                      title: Text(
                        'Tamil',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    ReusableListTile(
                      title: Text(
                        'Telugu',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                ReusableListTile(
                    title: Text(
                      'Contact Us',
                      style: TextStyle(fontSize: 18),
                    ),
                    listIcon: Icon(
                      Icons.connect_without_contact,
                      size: 30,
                    ),
                    onTap: () {}),
                ReusableListTile(
                    title: Text(
                      'Help Centre',
                      style: TextStyle(fontSize: 18),
                    ),
                    listIcon: Icon(
                      Icons.contact_support_outlined,
                      size: 30,
                    ),
                    onTap: () {}),
                ReusableListTile(
                    title: Text(
                      'Legal Statements',
                      style: TextStyle(fontSize: 18),
                    ),
                    listIcon: Icon(
                      Icons.gavel_rounded,
                      size: 30,
                    ),
                    onTap: () {}),
                ReusableListTile(
                    title: Text(
                      'About Us',
                      style: TextStyle(fontSize: 18),
                    ),
                    listIcon: Icon(
                      Icons.info_outline_rounded,
                      size: 30,
                    ),
                    onTap: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
