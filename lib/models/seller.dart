import 'package:nivika_asper/models/user.dart';

class SellerModel{
  String? uid;
  String? email;
  String? fullName;
  String type = 'buyer'; // Seller, buyer, delivery
  List<dynamic>? wishlist;
  List<dynamic>? cart;
  String? phoneNos;
  String? address;
}