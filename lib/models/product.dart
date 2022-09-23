
class ProductModel {
  late String uid;
  late String seller;
  late String name;
  late String description;
  late String pricing;
  late String imgLink;
  late double rating;
  late bool readyToOrder;
  late int quantityOrWaitTime;
  late List<dynamic> reviews;

  ProductModel(
      {required this.uid,
      required this.name,
      required this.description,
      required this.pricing,
      required this.seller,
      required this.imgLink,
      required this.rating,
      required this.readyToOrder,
      required this.quantityOrWaitTime,
      required this.reviews});

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
