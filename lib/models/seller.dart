import 'package:nivika_asper/models/user.dart';

class SellerModel {
  String? uid;
  String? email;
  String? fullName;
  List<dynamic>? wishlist;
  List<dynamic>? cart;
  String? phoneNos;
  String? address;
  List<dynamic>? products;
  String? aadhaar;

  SellerModel(
      {this.email,
      this.fullName,
      this.uid,
      this.cart,
      this.wishlist,
      this.phoneNos,
      this.address,
      this.products,
      this.aadhaar});

  SellerModel.fromUser(UserModel oldUser, String naadhaar) {
    uid = oldUser.uid;
    email = oldUser.email;
    fullName = oldUser.fullName;
    wishlist = oldUser.wishlist;
    cart = oldUser.cart;
    phoneNos = oldUser.phoneNos;
    address = oldUser.address;
    aadhaar = naadhaar;
  }

  SellerModel.fromMap(Map<String, dynamic> map){
    uid = map['uid'];
    email = map['email'];
    fullName = map['fullName'];
    cart = map['cart'];
    wishlist = map['wishlist'];
    phoneNos = map['phoneNos'];
    address = map['address'];
    products = map['products'];
    aadhaar = map['aadhaar'];
  }
}
