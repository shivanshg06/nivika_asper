import 'package:nivika_asper/models/product.dart';
import 'package:nivika_asper/models/user.dart';

class SellerModel {
  String? uid;
  String? email;
  String? fullName;
  String type = 'buyer'; // Seller, buyer, delivery
  List<dynamic>? wishlist;
  List<dynamic>? cart;
  String? phoneNos;
  String? address;
  List<ProductModel>? products;

  SellerModel(
      {this.email,
      this.fullName,
      this.uid,
      this.cart,
      this.wishlist,
      this.phoneNos,
      this.address, this.products});

  SellerModel.fromUser(UserModel oldUser) {
    uid = oldUser.uid;
    email = oldUser.email;
    fullName = oldUser.fullName;
    wishlist = oldUser.wishlist;
    cart = oldUser.cart;
    phoneNos = oldUser.phoneNos;
    address = oldUser.address;
  }
}
