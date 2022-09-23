class UserModel {
  String? uid;
  String? email;
  String? fullName;
  List<dynamic>? wishlist;
  List<dynamic>? cart;
  String? phoneNos;
  String? address;
  late bool seller;

  UserModel(
      {this.email,
      this.fullName,
      this.uid,
      this.cart,
      this.wishlist,
      this.phoneNos,
      this.address,
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
