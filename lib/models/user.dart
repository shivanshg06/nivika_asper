// ignore_for_file: unused_import

import 'package:uuid/uuid.dart';

class UserModel {
  String? uid;
  String? email;
  String? fullName;
  List<dynamic>? wishlist;
  List<dynamic>? cart;
  String? phoneNos;
  String? address;

  UserModel(
      {this.email,
      this.fullName,
      this.uid,
      this.cart,
      this.wishlist,
      this.phoneNos,
      this.address});

  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    fullName = map['fullName'];
    email = map['email'];
    cart = map['cart'];
    wishlist = map['wishlist'];
    phoneNos = map['phoneNos'];
    address = map['address'];
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "fullName": fullName,
      "email": email,
      "cart": cart,
      "wishlist": wishlist,
      "phoneNos": phoneNos,
      "address": address,
    };
  }
}
