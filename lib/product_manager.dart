import 'package:flutter/material.dart';
import 'package:pic/product.dart';
import 'package:pic/product_control.dart';

class ProductManager extends StatefulWidget {
  final String firstObject;
  ProductManager({this.firstObject});
  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  void initState() {
    if (widget.firstObject != null) _products.add(widget.firstObject);
    super.initState();
  }

  void addProduct() {
    setState(() {
      _products.add('Sweets');
    });
  }

  Widget build(BuildContext context) {
    return Column(children: [
      ProductControl(addProduct),
      Product(_products),
    ]);
  }
}
