import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

class ProductModel with ChangeNotifier {
  final String productId,
      productTitle,
      productPrice,
      productCategory,
      productDescription,
      productRatings,
      productImage,
      productQuantity;
  Timestamp? createdAt;

  ProductModel({
    required this.productId,
    required this.productTitle,
    required this.productPrice,
    required this.productCategory,
    required this.productDescription,
    required this.productImage,
    required this.productQuantity,
    required this.productRatings,
    this.createdAt,
  });

  factory ProductModel.fromFirestore(DocumentSnapshot doc) {
    Map data  = doc.data() as Map<String , dynamic>;
    // data.containsKey("key")
    return ProductModel(
        productId:  data["productId"],  //doc.get(field),
        productTitle: data["productTitle"],
        productPrice: data["productPrice"],
        productCategory: data["productCategory"],
        productDescription: data["productDescription"],
        productImage: data["productImage"],
        productQuantity: data["productQuantity"],
        productRatings: data["productRatings"],
        createdAt: data["createdAt"],);
  }
}
