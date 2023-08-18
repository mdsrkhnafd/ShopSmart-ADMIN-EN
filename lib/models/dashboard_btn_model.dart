import 'dart:html';
import 'package:flutter/material.dart';
import 'package:shop_smart_admin_en/screens/edit_upload_product_form.dart';
import 'package:shop_smart_admin_en/screens/inner_screen/orders/orders_screen.dart';
import 'package:shop_smart_admin_en/screens/search_screen.dart';
import 'package:shop_smart_admin_en/services/assets_manager.dart';

class DashboardButtonModel {
  final String text, imagePath;
  final Function onPressed;

  DashboardButtonModel({
    required this.text,
    required this.imagePath,
    required this.onPressed,
  });

  static List<DashboardButtonModel> dashboardBtnList(context) => [
    DashboardButtonModel(
      text: "Add a new product",
      imagePath: AssetsManager.cloud,
      onPressed: () {
        Navigator.pushNamed(context, EditOrUploadProductScreen.routeName);
      },
    ),

    DashboardButtonModel(
      text: "inspect all products",
      imagePath: AssetsManager.shoppingCart,
      onPressed: () {
        Navigator.pushNamed(context, SearchScreen.routeName);
      },
    ),

    DashboardButtonModel(
      text: "View Orders",
      imagePath: AssetsManager.order,
      onPressed: () {
        Navigator.pushNamed(context, OrdersScreenFree.routeName);
      },
    ),
  ];
}
