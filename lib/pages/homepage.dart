import 'package:flutter/material.dart';
import 'package:pic/product_manager.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Easy List')), body: ProductManager());
  }
}
