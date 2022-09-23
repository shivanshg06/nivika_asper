import 'package:uuid/uuid.dart';

class ProductModel {
  String? uid;
  String? seller;
  String? name;
  String? description;
  String? pricing;
  String? imgLink;
  double? rating;
  bool? readyToOrder;
  int? quantityOrWaitTime;
  List<dynamic>? reviews;

  ProductModel(
      {this.uid,
      this.name,
      this.description,
      this.pricing,
      this.seller,
      this.imgLink,
      this.rating,
      this.readyToOrder,
      this.quantityOrWaitTime,
      this.reviews});

  ProductModel.fromMap(Map<String, dynamic> map) {
    uid = map['uid'];
    name = map['name'];
    description = map['description'];
    pricing = map['pricing'];
    imgLink = map['imgLink'];
    rating = map['rating'];
    readyToOrder = map['readyToOrder'];
    quantityOrWaitTime = map['quantityOrWaitTime'];
    reviews = map['reviews'];
    seller = map['seller'];
    
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": name,
      "description": description,
      "pricing": pricing,
      "imgLink": imgLink,
      "rating": rating,
      "readyToOrder": readyToOrder,
      "quantityOrWaitTime": quantityOrWaitTime,
      "reviews": reviews,
      "seller": seller,
    };
  }
}
