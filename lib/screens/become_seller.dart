// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/models/user.dart';

class BecomeSeller extends StatefulWidget {
  const BecomeSeller(
      {super.key, required this.userModel, required this.firebaseUser});
  final UserModel userModel;
  final User firebaseUser;
  @override
  State<BecomeSeller> createState() => _BecomeSellerState();
}

class _BecomeSellerState extends State<BecomeSeller> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 3,
                  decoration: BoxDecoration(color: accentColour),
                ),
                Text(
                  data,
                  textAlign: TextAlign.justify,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 2,
                  decoration: BoxDecoration(color: accentColour),
                ),
                Visibility(
                  visible: isChecked3,
                  child: Column(
                    children: [
                      Text(
                        data1,
                        textAlign: TextAlign.justify,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 2,
                        decoration: BoxDecoration(color: accentColour),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked2,
                      onChanged: (value) {
                        setState(() {
                          isChecked2 = value!;
                          isChecked3 = !isChecked3;
                        });
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Text(
                        '''Click to read full Terms and Conditions''',
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      child: Text(
                        '''By clicking you agree to our Terms and Conditions.''',
                        softWrap: true,
                      ),
                    )
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }

  String data =
      '''This Terms of Service Agreement (the “Agreement”) governs your use of this application, “NIVIKA” offer of products for purchase on this application, or your purchase of products available on this Website. This Agreement includes, and incorporates by this reference, the policies and guidelines referenced below. “NIVIKA” reserves the right to change or revise the terms and conditions of this Agreement at any time by posting any changes or a revised Agreement on this Website. “NIVIKA” will alert you that changes or revisions have been made by indicating on the top of this Agreement the date it was last revised. The changed or revised Agreement will be effective immediately after it is posted on this Website. Your use of the Website following the posting any such changes or of a revised Agreement will constitute your acceptance of any such changes or revisions. “NIVIKA” encourages you to review this Agreement whenever you visit the Website to make sure that you understand the terms and conditions governing use of the Website. This Agreement does not alter in any way the terms or conditions of any other written agreement you may have with “NIVIKA” for other products or services. If you do not agree to this Agreement (including any referenced policies or guidelines), please immediately terminate your use of the Website.''';
  String data1 = '''I. PRODUCTS
Terms of Offer. This Website offers for sale certain products (the “Products”). By placing an order for Products through this Website, you agree to the terms set forth in this Agreement.
Customer Solicitation: Unless you notify our third party call center reps or direct NIVIKA sales reps, while they are calling you, of your desire to opt out from further direct company communications and solicitations, you are agreeing to continue to receive further emails and call solicitations NIVIKA and its designated in house or third party call team(s).
Opt Out Procedure: We provide 3 easy ways to opt out of from future solicitations. 1. You may use the opt out link found in any email solicitation that you may receive. 2. You may also choose to opt out, via sending your email address to: [opt-out email].
 
3. You may send a written remove request to UIT, RGPV Gandhi Nagar, Abbas Nagar, Airport Road, Bhopal, Madhya Pradesh.
Proprietary Rights. NIVIKA has proprietary rights and trade secrets in the Products. You may not copy, reproduce, resell or redistribute any Product manufactured and/or distributed by NIVIKA. It also has rights to all trademarks and trade dress and specific layouts of this webpage, including calls to action, text placement, images and other information.
Sales Tax. If you purchase any Products, you will be responsible for paying any applicable sales tax.
II. WEBSITE
Content; Intellectual Property; Third Party Links. In addition to making Products available, this Website also offers information and marketing materials. This Website also offers information, both directly and through indirect links to third-party websites, about dry food items and handicraft arts. “NIVIKA” does not always create the information offered on this Website; instead the information is often gathered from other sources. To the extent that NIVIKA does create the content on this Website, such content is protected by intellectual property laws of the India, foreign nations, and international bodies. Unauthorized use of the material may violate copyright, trademark, and/or other laws. You acknowledge that your use of the content on this Website is for personal, noncommercial use. Any links to third-party websites are provided solely as a convenience to you. NIVIKA does not endorse the contents on any such third-party websites. NIVIKA is not responsible for the content of or any damage that may result from your access to or reliance on these third-party websites. If you link to third-party websites, you do so at your own risk.
Use of Website; NIVIKA is not responsible for any damages resulting from use of this website by anyone. You will not use the Website for illegal purposes. You will (1) abide by all applicable local, state, national, and international laws and regulations in your use of the Website (including laws regarding intellectual property), (2) not interfere with or disrupt the use and enjoyment of the Website by other users, (3) not resell material on the Website, (4) not engage, directly or indirectly, in transmission of “spam”, chain letters, junk mail or any other type of unsolicited communication, and (5) not defame, harass, abuse, or disrupt other users of the Website
License. By using this Website, you are granted a limited, non-exclusive, non-transferable right to use the content and materials on the Website in connection with your normal, noncommercial, use of the Website. You may not copy, reproduce, transmit, distribute, or create derivative works of such content

or information without express written authorization from NIVIKA or the applicable third party (if third party content is at issue).
Posting. By posting, storing, or transmitting any content on the Website, you hereby grant NIVIKA a perpetual, worldwide, non-exclusive, royalty-free, assignable, right and license to use, copy, display, perform, create derivative works from, distribute, have distributed, transmit and assign such content in any form, in all media now known or hereinafter created, anywhere in the world. NIVIKA does not have the ability to control the nature of the user-generated content offered through the Website. You are solely responsible for your interactions with other users of the Website and any content you post. NIVIKA is not liable for any damage or harm resulting from any posts by or interactions between users. NIVIKA reserves the right, but has no obligation, to monitor interactions between and among users of the Website and to remove any content
III. DISCLAIMER OF WARRANTIES
YOUR USE OF THIS WEBSITE AND/OR PRODUCTS ARE AT YOUR SOLE RISK. THE WEBSITE AND PRODUCTS ARE OFFERED ON AN “AS IS” AND “AS AVAILABLE” BASIS. NIVIKA EXPRESSLY DISCLAIMS ALL WARRANTIES OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT WITH RESPECT TO THE PRODUCTS OR WEBSITE CONTENT, OR ANY RELIANCE UPON OR USE OF THE WEBSITE CONTENT OR PRODUCTS. (“PRODUCTS” INCLUDE TRIAL PRODUCTS.)
WITHOUT LIMITING THE GENERALITY OF THE FOREGOING, NIVIKA MAKES NO WARRANTY:
THAT THE INFORMATION PROVIDED ON THIS WEBSITE IS ACCURATE, RELIABLE, COMPLETE, OR TIMELY.
THAT THE LINKS TO THIRD-PARTY WEBSITES ARE TO INFORMATION THAT IS ACCURATE, RELIABLE, COMPLETE, OR TIMELY.
NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM THIS WEBSITE WILL CREATE ANY WARRANTY NOT EXPRESSLY STATED HEREIN.
AS TO THE RESULTS THAT MAY BE OBTAINED FROM THE USE OF THE PRODUCTS OR THAT DEFECTS IN PRODUCTS WILL BE CORRECTED.

REGARDING ANY PRODUCTS PURCHASED OR OBTAINED THROUGH THE WEBSITE.
SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF CERTAIN WARRANTIES, SO SOME OF THE ABOVE EXCLUSIONS MAY NOT APPLY TO YOU.
IV. LIMITATION OF LIABILITY
NIVIKA ENTIRE LIABILITY, AND YOUR EXCLUSIVE REMEDY, IN LAW, IN EQUITY, OR OTHWERWISE, WITH RESPECT TO THE WEBSITE CONTENT AND PRODUCTS AND/OR FOR ANY BREACH OF THIS AGREEMENT IS SOLELY LIMITED TO THE AMOUNT YOU PAID, LESS SHIPPING AND HANDLING, FOR PRODUCTS PURCHASED VIA THE WEBSITE.
NIVIKA WILL NOT BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES IN CONNECTION WITH THIS AGREEMENT OR THE PRODUCTS IN ANY MANNER, INCLUDING LIABILITIES RESULTING FROM (1) THE USE OR THE INABILITY TO USE THE WEBSITE CONTENT OR PRODUCTS; (2) THE COST OF PROCURING SUBSTITUTE PRODUCTS OR CONTENT; (3) ANY PRODUCTS PURCHASED OR OBTAINED OR TRANSACTIONS ENTERED INTO THROUGH THE WEBSITE; OR (4) ANY LOST PROFITS YOU ALLEGE.
SOME JURISDICTIONS DO NOT ALLOW THE LIMITATION OR EXCLUSION OF LIABILITY FOR INCIDENTAL OR CONSEQUENTIAL DAMAGES SO SOME OF THE ABOVE LIMITATIONS MAY NOT APPLY TO YOU.
V. INDEMNIFICATION
You will release, indemnify, defend and hold harmless NIVIKA, and any of its contractors, agents, employees, officers, directors, shareholders, affiliates and assigns from all liabilities, claims, damages, costs and expenses, including reasonable attorneys’ fees and expenses, of third parties relating to or arising out of (1) this Agreement or the breach of your warranties, representations and obligations under this Agreement; (2) the Website content or your use of the Website content; (3) the Products or your use of the Products (including Trial Products); (4) any intellectual property or other proprietary right of any person or entity; (5) your violation of any provision of this Agreement; or (6) any information or data you supplied to NIVIKA. When NIVIKA is threatened with suit or sued by a third party, NIVIKA may seek written assurances from you concerning your promise to indemnify; your failure to provide such assurances may be considered by NIVIKA to be a material breach of this Agreement. NIVIKA will have the right to participate in any defense by you of a third-party claim related to your use of any of the Website content or Products, with counsel of choice at its expense. NIVIKA will reasonably cooperate in any defense by you of a third-party claim at your request and expense. You will have sole

responsibility to defend NIVIKA against any claim, but you must receive NIVIKA prior written consent regarding any related settlement. The terms of this provision will survive any termination or cancellation of this Agreement or your use of the Website or Products.
VI. PRIVACY
NIVIKA believes strongly in protecting user privacy and providing you with notice of MuscleUP Nutrition ‘s use of data. Please refer to NIVIKA privacy policy, incorporated by reference herein, that is posted on the Website.
VII. AGREEMENT TO BE BOUND
By using this Website or ordering Products, you acknowledge that you have read and agree to be bound by this Agreement and all terms and conditions on this Website.
VIII. GENERAL
Force Majeure. NIVIKA will not be deemed in default hereunder or held responsible for any cessation, interruption or delay in the performance of its obligations hereunder due to earthquake, flood, fire, storm, natural disaster, act of God, war, terrorism, armed conflict, labor strike, lockout, or boycott.
Cessation of Operation. NIVIKA may at any time, in its sole discretion and without advance notice to you, cease operation of the Website and distribution of the Products.
Entire Agreement. This Agreement comprises the entire agreement between you and NIVIKA and supersedes any prior agreements pertaining to the subject matter contained herein.
Effect of Waiver. The failure of NIVIKA to exercise or enforce any right or provision of this Agreement will not constitute a waiver of such right or provision. If any provision of this Agreement is found by a court of competent jurisdiction to be invalid, the parties nevertheless agree that the court should endeavor to give effect to the parties’ intentions as reflected in the provision, and the other provisions of this Agreement remain in full force and effect.

Governing Law; Jurisdiction. This Website originates from the [City, State]. This Agreement will be governed by the laws of the State of [Law State Name] without regard to its conflict of law principles to the contrary. Neither you nor NIVIKA will commence or prosecute any suit, proceeding or claim to enforce the provisions of this Agreement, to recover damages for breach of or default of this Agreement, or otherwise arising under or by reason of this Agreement, other than in courts located in State of MADHYA PRADESH. By using this Website or ordering Products, you consent to the jurisdiction and venue of such courts in connection with any action, suit, proceeding or claim arising under or by reason of this Agreement. You hereby waive any right to trial by jury arising out of this Agreement and any related documents.
Statute of Limitation. You agree that regardless of any statute or law to the contrary, any claim or cause of action arising out of or related to use of the Website or Products or this Agreement must be filed within one (1) year after such claim or cause of action arose or be forever barred.
Waiver of Class Action Rights. BY ENTERING INTO THIS AGREEMENT, YOU HEREBY IRREVOCABLY WAIVE ANY RIGHT YOU MAY HAVE TO JOIN CLAIMS WITH THOSE OF OTHER IN THE FORM OF A CLASS ACTION OR SIMILAR PROCEDURAL DEVICE. ANY CLAIMS ARISING OUT OF, RELATING TO, OR CONNECTION WITH THIS AGREEMENT MUST BE ASSERTED INDIVIDUALLY.
Termination. NIVIKA reserves the right to terminate your access to the Website if it reasonably believes, in its sole discretion, that you have breached any of the terms and conditions of this Agreement. Following termination, you will not be permitted to use the Website and NIVIKA may, in its sole discretion and without advance notice to you, cancel any outstanding orders for Products. If your access to the Website is terminated, NIVIKQ reserves the right to exercise whatever means it deems necessary to prevent unauthorized access of the Website. This Agreement will survive indefinitely unless and until NIVIKA chooses, in its sole discretion and without advance to you, to terminate it.
Domestic Use. NIVIKA makes no representation that the Website or Products are appropriate or available for use in locations outside India. Users who access the Website from outside India do so at their own risk and initiative and must bear all responsibility for compliance with any applicable local laws.
Assignment. You may not assign your rights and obligations under this Agreement to anyone. NIVIKA may assign its rights and obligations under this Agreement in its sole discretion and without advance notice to you.
BY USING THIS WEBSITE OR ORDERING PRODUCTS FROM THIS WEBSITE YOU AGREE

TO BE BOUND BY ALL OF THE TERMS AND CONDITIONS OF THIS AGREEMENT. ''';
}
