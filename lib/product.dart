import 'package:flutter/material.dart';
import 'package:pic/pages/productDetails.dart';

class Product extends StatelessWidget {
  final List<String> products;
  Product(this.products);
  Widget build(BuildContext context) {
    Widget _buildProducts(BuildContext context, int index) {
      return Card(
        child: Column(
          children: <Widget>[
            Image.asset('asset/food.jpg'),
            Text(products[index]),
            FlatButton(
                child: Text('Detail'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DetailPage()),
                    ))
          ],
        ),
      );
    }

    return (products.length > 0)
        ? (Expanded(
            child: ListView.builder(
            itemBuilder: _buildProducts,
            itemCount: products.length,
          )))
        : Center(child: Text('NO product Kindly add Some Products'));
  }
}
