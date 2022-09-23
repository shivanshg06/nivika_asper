class UserModel {
  late String uid;
  late String email;
  late String fullName;
  late List<dynamic> wishlist;
  late List<dynamic> cart;
  late String phoneNos;
  late String address;
  late bool seller;

  UserModel(
      {required this.email,
      required this.fullName,
      required this.uid,
      required this.cart,
      required this.wishlist,
      required this.phoneNos,
      required this.address,
      this.seller = false});

  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    fullName = map['fullName'];
    email = map['email'];
    cart = map['cart'];
    wishlist = map['wishlist'];
    phoneNos = map['phoneNos'];
    address = map['address'];
    seller = map['seller'];
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
      "seller": seller,
    };
  }
}
