import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nivika_asper/models/user.dart';

class FirebaseHelper {
  static Future<UserModel?> getUserModelById(String uid) async {
    UserModel? userModel;
    DocumentSnapshot docSnap =
        await FirebaseFirestore.instance.collection('users').doc(uid).get();

    userModel = UserModel.fromMap(docSnap.data() as Map<String, dynamic>);
    return userModel;
  }
}
