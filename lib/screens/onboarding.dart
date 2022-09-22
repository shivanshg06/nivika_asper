// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        pages: [
          pageStyles(context, onboardingTitles[1], onboardingData[1]),
        ],
      ),
    );
  }
}

PageModel pageStyles(BuildContext context, String title, String content) {
  return PageModel(
    widget: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.10, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/logo_temp.png'),
            Text(
              'The First Step?',
              style: TextStyle(
                fontSize: 35,
                color: accentColour,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              content,
            ),
          ],
        ),
      ),
    ),
  );
}

List<String> onboardingTitles = [
  'The First Step!',
  'Where DO We Stand?',
  'How Do We Do It?',
  'Our Story!',
  'Our Future Goals'
];

List<String> onboardingData = [
  'The NIVIKA team\'s first step is to reach out to as many women as possible. There are numerous talented women in the world. And we don\'t want to squander their abilities. Learning skills takes a lifetime. However, these women already possessed the necessary skills in this competitive market. They can make their own living and pay their own bills with the skills they have. So contacting them is our first step.',
  'Women frequently experience feelings of helplessness. Despite having a skill that may pay well. They lack a platform to showcase their abilities. NIVIKA gives women a platform to showcase their talents, from cooking to knitting to handicrafts. A wide range of skills on one platform. Clients no longer need to look for multiple platforms. They will be able to fulfil their desires in one location while also assisting many other women in fulfilling theirs.',
  'Your intent will be the most important aspect of any action. If you tell yourself that you are strong and independent, you will become so. We simply provide a platform for women to demonstrate their abilities and earn their own money. We lay the groundwork for them to achieve their own goals. We give them a platform if they want to be independent. We are only a conduit for them, but they are the true heroes of their own lives.',
  'The word NIVIKA means "base" or "foundation." Growing up, we saw our mothers, grandmothers, aunts, and so on. They are familiar with knitting, painting, and other crafts. However, they do not receive recognition for their abilities, and getting paid is even more difficult. So our team devised this solution to give those women a platform or base . They can now demonstrate their abilities and earn their own money. They are capable of being strong and self-sufficient, which is what our team desires.',
  'We intend to broaden our domains in the future by including women with technical skills. Collaboration is another important goal. We would like to work with non-governmental and governmental organisations that assist women. We also want to teach some skills to women so that they can get jobs and pass on their knowledge to their family members. We intend to expand our platform to the entire country once we have settled properly. so that our country\'s women are aware of our platform.'
];
