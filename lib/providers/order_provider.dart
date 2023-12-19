import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import '../models/order_model.dart';

class OrderProvider with ChangeNotifier {
  final List<OrdersModelAdvanced> orders = [];

  List<OrdersModelAdvanced> get getOrders => orders;

  Future<List<OrdersModelAdvanced>> fetchOrders() async {
    try {
      await FirebaseFirestore.instance
          .collection("ordersAdvanced")
          .orderBy("orderDate", descending: false)
          .get()
          .then((orderSnapshot) {
        orders.clear();
        for (var element in orderSnapshot.docs) {
          orders.insert(
            0,
            OrdersModelAdvanced(
              orderId: element.get('orderId'),
              userId: element.get('userId'),
              productId: element.get('productId'),
              productTitle: element.get('productTitle').toString(),
              userName: element.get('userName'),
              price: element.get('price').toString(),
              imageUrl: element.get('imageUrl'),
              quantity: element.get('quantity').toString(),
              orderDate: element.get('orderDate'),
            ),
          );
        }
      });
      return orders;
    } catch (e) {
      rethrow;
    }
  }
}
