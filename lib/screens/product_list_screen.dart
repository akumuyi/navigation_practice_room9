import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';

class ProductListScreen extends StatelessWidget {
  // Sample product list data
  final List<Product> products = [
    Product(
      name: 'Pixel 1',
      description: 'Pixel is the most featureful phone ever',
      price: '800',
    ),
    Product(
      name: 'Laptop',
      description: 'Laptop is the most productive development tool',
      price: '2000',
    ),
    Product(
      name: 'Tablet',
      description: 'Tablet is the most useful device ever for meeting',
      price: '1500',
    ),
    Product(
      name: 'Pen Drive',
      description: 'Pendrive is the stylish phone ever',
      price: '100',
    ),
    Product(
      name: 'Floppy Drive',
      description: 'Floppy Drive is a classic storage device',
      price: '10',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Navigation')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            color: productColorList[index],
          );
        },
      ),
    );
  }
}