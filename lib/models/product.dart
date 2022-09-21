import 'package:uuid/uuid.dart';

class ProductModel {
  Uuid? uid;
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
    };
  }
}
